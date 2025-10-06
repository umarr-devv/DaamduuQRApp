// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenScheme _$TokenSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TokenScheme',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['access_token']);
    final val = TokenScheme(
      accessToken: $checkedConvert('access_token', (v) => v as String),
      tokenType: $checkedConvert('token_type', (v) => v as String? ?? 'Bearer'),
    );
    return val;
  },
  fieldKeyMap: const {'accessToken': 'access_token', 'tokenType': 'token_type'},
);

Map<String, dynamic> _$TokenSchemeToJson(TokenScheme instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': ?instance.tokenType,
    };
