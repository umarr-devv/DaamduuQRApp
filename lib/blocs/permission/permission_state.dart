part of 'permission_cubit.dart';

@JsonSerializable()
class PermissionState extends Equatable {
  const PermissionState({
    this.camera = PermissionStatus.denied,
    this.location = PermissionStatus.denied,
    this.notification = PermissionStatus.denied,
  });

  final PermissionStatus camera;
  final PermissionStatus location;
  final PermissionStatus notification;

  PermissionState copyWith({
    PermissionStatus? camera,
    PermissionStatus? location,
    PermissionStatus? notification,
  }) {
    return PermissionState(
      camera: camera ?? this.camera,
      location: location ?? this.location,
      notification: notification ?? this.notification,
    );
  }

  PermissionState.from(PermissionState other)
    : camera = other.camera,
      location = other.location,
      notification = other.notification;

  factory PermissionState.fromJson(Map<String, dynamic> json) =>
      _$PermissionStateFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionStateToJson(this);

  @override
  List<Object?> get props => [camera, location, notification];
}

final class PermissionInitial extends PermissionState {}

final class PermissionUpdate extends PermissionState {
  PermissionUpdate(super.state) : super.from();
}
