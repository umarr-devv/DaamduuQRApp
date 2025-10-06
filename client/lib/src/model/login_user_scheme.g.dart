// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserScheme _$LoginUserSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LoginUserScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['username', 'password']);
      final val = LoginUserScheme(
        username: $checkedConvert('username', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LoginUserSchemeToJson(LoginUserScheme instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
