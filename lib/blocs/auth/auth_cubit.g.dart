// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) => AuthState(
  customer: json['customer'] == null
      ? null
      : CustomerScheme.fromJson(json['customer'] as Map<String, dynamic>),
  firebaseDisplayName: json['firebase_display_name'] as String?,
  firebaseEmail: json['firebase_email'] as String?,
  firebasePhotoUrl: json['firebase_photo_url'] as String?,
  firebaseUid: json['firebase_uid'] as String?,
);

Map<String, dynamic> _$AuthStateToJson(AuthState instance) => <String, dynamic>{
  'customer': instance.customer,
  'firebase_display_name': instance.firebaseDisplayName,
  'firebase_email': instance.firebaseEmail,
  'firebase_photo_url': instance.firebasePhotoUrl,
  'firebase_uid': instance.firebaseUid,
};
