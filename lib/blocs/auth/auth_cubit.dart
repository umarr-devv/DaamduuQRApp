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
      emit(AuthSignInLoading());
      UserCredential? user;
      if (Platform.isAndroid) {
        user = await AuthService.google();
      } else if (Platform.isIOS) {
        user = await AuthService.googleWeb();
      }
      emit(AuthSignInLoaded());
    } catch (exc) {
      talker.error(exc);
      emit(AuthFailure());
    }
  }

  Future signInWithAppleID() async {
    try {
      emit(AuthSignInLoading());
      UserCredential? user;
      if (Platform.isAndroid) {
        user = await AuthService.appleIdWeb();
      } else if (Platform.isIOS) {
        user = await AuthService.appleId();
      }
      emit(AuthSignInLoaded());
    } catch (exc) {
      talker.error(exc);
      emit(AuthFailure());
    }
  }

  Future signOut() async {
    await AuthService.appleId();
    emit(AuthSignOut());
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);
}
