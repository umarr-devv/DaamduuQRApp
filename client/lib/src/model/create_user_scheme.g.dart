// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserScheme _$CreateUserSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateUserScheme', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'username',
          'fullname',
          'role',
          'organization_id',
          'password',
        ],
      );
      final val = CreateUserScheme(
        username: $checkedConvert('username', (v) => v as String?),
        fullname: $checkedConvert('fullname', (v) => v as String?),
        role: $checkedConvert('role', (v) => $enumDecode(_$RoleTypeEnumMap, v)),
        organizationId: $checkedConvert('organization_id', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'organizationId': 'organization_id'});

Map<String, dynamic> _$CreateUserSchemeToJson(CreateUserScheme instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullname': instance.fullname,
      'role': _$RoleTypeEnumMap[instance.role]!,
      'organization_id': instance.organizationId,
      'password': instance.password,
    };

const _$RoleTypeEnumMap = {
  RoleType.creater: 'creater',
  RoleType.admin: 'admin',
  RoleType.manager: 'manager',
  RoleType.cashier: 'cashier',
  RoleType.waiter: 'waiter',
};
