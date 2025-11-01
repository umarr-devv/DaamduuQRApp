import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'permission_cubit.g.dart';
part 'permission_state.dart';

class PermissionCubit extends HydratedCubit<PermissionState> {
  PermissionCubit() : super(PermissionInitial());

  final talker = GetIt.I<Talker>();

  Future update() async {
    final camera = await Permission.camera.status;
    final location = await Permission.locationWhenInUse.status;
    final notification = await Permission.notification.status;

    final newState = state.copyWith(
      camera: camera,
      location: location,
      notification: notification,
    );
    emit(PermissionUpdate(newState));
  }

  Future request(Permission permission) async {
    if (await permission.isDenied) {
      await permission.request();
    } else if (await permission.isPermanentlyDenied) {
      await openAppSettings();
    }
    await update();
  }

  @override
  Map<String, dynamic>? toJson(PermissionState state) => state.toJson();

  @override
  PermissionState? fromJson(Map<String, dynamic> json) =>
      PermissionState.fromJson(json);
}
