// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermissionState _$PermissionStateFromJson(Map<String, dynamic> json) =>
    PermissionState(
      camera:
          $enumDecodeNullable(_$PermissionStatusEnumMap, json['camera']) ??
          PermissionStatus.denied,
      location:
          $enumDecodeNullable(_$PermissionStatusEnumMap, json['location']) ??
          PermissionStatus.denied,
      notification:
          $enumDecodeNullable(
            _$PermissionStatusEnumMap,
            json['notification'],
          ) ??
          PermissionStatus.denied,
    );

Map<String, dynamic> _$PermissionStateToJson(PermissionState instance) =>
    <String, dynamic>{
      'camera': _$PermissionStatusEnumMap[instance.camera]!,
      'location': _$PermissionStatusEnumMap[instance.location]!,
      'notification': _$PermissionStatusEnumMap[instance.notification]!,
    };

const _$PermissionStatusEnumMap = {
  PermissionStatus.denied: 'denied',
  PermissionStatus.granted: 'granted',
  PermissionStatus.restricted: 'restricted',
  PermissionStatus.limited: 'limited',
  PermissionStatus.permanentlyDenied: 'permanentlyDenied',
  PermissionStatus.provisional: 'provisional',
};
