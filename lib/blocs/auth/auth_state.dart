part of 'auth_cubit.dart';

@JsonSerializable()
class AuthState extends Equatable {
  const AuthState({
    this.customer,
    this.firebaseDisplayName,
    this.firebaseEmail,
    this.firebasePhotoUrl,
    this.firebaseUid,
  });

  final CustomerScheme? customer;
  final String? firebaseDisplayName;
  final String? firebaseEmail;
  final String? firebasePhotoUrl;
  final String? firebaseUid;

  AuthState copyWith({CustomerScheme? customer, User? firebaseUser}) {
    if (firebaseUser == null || customer == null) {
      return AuthState(
        customer: null,
        firebaseDisplayName: null,
        firebaseEmail: null,
        firebasePhotoUrl: null,
        firebaseUid: null,
      );
    } else {
      return AuthState(
        customer: customer,
        firebaseDisplayName: firebaseUser.displayName,
        firebaseEmail: firebaseUser.email,
        firebasePhotoUrl: firebaseUser.photoURL,
        firebaseUid: firebaseUser.uid,
      );
    }
  }

  AuthState.from(AuthState other)
    : customer = other.customer,
      firebaseDisplayName = other.firebaseDisplayName,
      firebaseEmail = other.firebaseEmail,
      firebasePhotoUrl = other.firebasePhotoUrl,
      firebaseUid = other.firebaseUid;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);

  @override
  List<Object?> get props => [
    customer,
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
