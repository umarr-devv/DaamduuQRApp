import 'package:app/data/repositories/repositories.dart';
import 'package:app/service/auth.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'auth_cubit.g.dart';
part 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final client = GetIt.I<DaamduuqrClient>();
  final secureStorage = GetIt.I<SecureStorage>();
  final talker = GetIt.I<Talker>();

  Future signInWithGoogle() async {
    await signIn(AuthService.signInWithGoogle);
  }

  Future signInWithAppleID() async {
    await signIn(AuthService.signInWithAppleId);
  }

  Future signOut() async {
    await AuthService.signOut();
    await secureStorage.delete(SecureStorageKey.accessToken);
    final newState = state.copyWith(firebaseUser: null, customer: null);
    emit(AuthSignOut(newState));
  }

  Future signIn(Future<UserCredential> Function() getCredential) async {
    try {
      final emptyState = state.copyWith(customer: null, firebaseUser: null);
      emit(AuthSignInLoading(emptyState));

      final credential = await getCredential();
      final firebaseUser = credential.user;

      if (firebaseUser == null) {
        emit(AuthSignInCancel(state));
      }

      final token = await _signInCustomer(firebaseUser!);

      if (token == null) {
        emit(AuthFailure());
      }
      await secureStorage.write(
        SecureStorageKey.accessToken,
        token!.accessToken,
      );
      final customer = await _meCustomer(token);

      if (customer == null) {
        emit(AuthFailure());
      }

      final newState = state.copyWith(
        firebaseUser: firebaseUser,
        customer: customer,
      );
      emit(AuthSignInLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(AuthFailure());
    }
  }

  Future<TokenScheme?> _signInCustomer(User firebaseUser) async {
    final token = await client.getCustomersApi().customerSignIn(
      createCustomerScheme: CreateCustomerScheme(
        firebaseUid: firebaseUser.uid,
        email: firebaseUser.email,
        phoneNumber: firebaseUser.phoneNumber,
        fullname: firebaseUser.displayName,
      ),
    );
    return token.data;
  }

  Future<CustomerScheme?> _meCustomer(TokenScheme token) async {
    final customer = await client.getCustomersApi().customerMe(
      jwtToken: token.accessToken,
    );
    return customer.data;
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);
}
