part of 'auth_cubit.dart';

@JsonSerializable()
class AuthState extends Equatable {
  const AuthState({
    this.firebaseDisplayName,
    this.firebaseEmail,
    this.firebasePhotoUrl,
    this.firebaseUid,
  });

  final String? firebaseDisplayName;
  final String? firebaseEmail;
  final String? firebasePhotoUrl;
  final String? firebaseUid;

  AuthState copyWith(UserCredential? user) {
    if (user == null) {
      return AuthState(
        firebaseDisplayName: null,
        firebaseEmail: null,
        firebasePhotoUrl: null,
        firebaseUid: null,
      );
    } else {
      return AuthState(
        firebaseDisplayName: user.user?.displayName ?? firebaseDisplayName,
        firebaseEmail: user.user?.email ?? firebaseEmail,
        firebasePhotoUrl: user.user?.photoURL ?? firebasePhotoUrl,
        firebaseUid: user.user?.uid ?? firebaseUid,
      );
    }
  }

  AuthState.from(AuthState other)
    : firebaseDisplayName = other.firebaseDisplayName,
      firebaseEmail = other.firebaseEmail,
      firebasePhotoUrl = other.firebasePhotoUrl,
      firebaseUid = other.firebaseUid;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);

  @override
  List<Object?> get props => [
    firebaseDisplayName,
    firebaseEmail,
    firebasePhotoUrl,
    firebaseUid,
  ];
}

final class AuthInitial extends AuthState {}

final class AuthSignInChecking extends AuthState {}

final class AuthSignInLoading extends AuthState {
  AuthSignInLoading(super.state) : super.from();
}

final class AuthSignInLoaded extends AuthState {
  AuthSignInLoaded(super.state) : super.from();
}

final class AuthSignInCancel extends AuthState {
  AuthSignInCancel(super.state) : super.from();
}

final class AuthSignOut extends AuthState {
  AuthSignOut(super.state) : super.from();
}

final class AuthFailure extends AuthState {}
