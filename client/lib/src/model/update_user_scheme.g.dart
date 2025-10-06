// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserScheme _$UpdateUserSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateUserScheme', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['username', 'fullname', 'role', 'password'],
      );
      final val = UpdateUserScheme(
        username: $checkedConvert('username', (v) => v as String?),
        fullname: $checkedConvert('fullname', (v) => v as String?),
        role: $checkedConvert(
          'role',
          (v) => $enumDecodeNullable(_$RoleTypeEnumMap, v),
        ),
        password: $checkedConvert('password', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UpdateUserSchemeToJson(UpdateUserScheme instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullname': instance.fullname,
      'role': _$RoleTypeEnumMap[instance.role],
      'password': instance.password,
    };

const _$RoleTypeEnumMap = {
  RoleType.creater: 'creater',
  RoleType.admin: 'admin',
  RoleType.manager: 'manager',
  RoleType.cashier: 'cashier',
  RoleType.waiter: 'waiter',
};
