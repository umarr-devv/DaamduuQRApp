part of 'auth_cubit.dart';

@JsonSerializable()
class AuthState extends Equatable {
  const AuthState();

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthSignInChecking extends AuthState {}

final class AuthSignInLoading extends AuthState {}

final class AuthSignInLoaded extends AuthState {}

final class AuthSignInCancel extends AuthState {}

final class AuthSignOut extends AuthState {}

final class AuthFailure extends AuthState {}
