import 'dart:io';

import 'package:app/service/auth.dart';
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

  final talker = GetIt.I<Talker>();

  Future signInWithGoogle() async {
    try {
      final emptyState = state.copyWith(null);
      emit(AuthSignInLoading(emptyState));
      UserCredential user = await AuthService.google();
      final newState = state.copyWith(user);
      emit(AuthSignInLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(AuthFailure());
    }
  }

  Future signInWithAppleID() async {
    try {
      final emptyState = state.copyWith(null);
      emit(AuthSignInLoading(emptyState));

      UserCredential? user;
      if (Platform.isAndroid) {
        user = await AuthService.appleIdWeb();
      } else if (Platform.isIOS) {
        user = await AuthService.appleId();
      }

      final newState = state.copyWith(user);
      emit(AuthSignInLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(AuthFailure());
    }
  }

  Future signOut() async {
    await AuthService.appleId();
    final newState = state.copyWith(null);
    emit(AuthSignOut(newState));
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);
}
