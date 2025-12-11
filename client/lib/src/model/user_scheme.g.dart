// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserScheme _$UserSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'UserScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'username',
        'fullname',
        'organization_id',
        'role',
        'image_id',
      ],
    );
    final val = UserScheme(
      id: $checkedConvert('id', (v) => v as String),
      createAt: $checkedConvert(
        'create_at',
        (v) => DateTime.parse(v as String),
      ),
      updateAt: $checkedConvert(
        'update_at',
        (v) => DateTime.parse(v as String),
      ),
      username: $checkedConvert('username', (v) => v as String?),
      fullname: $checkedConvert('fullname', (v) => v as String?),
      organizationId: $checkedConvert('organization_id', (v) => v as String),
      role: $checkedConvert('role', (v) => $enumDecode(_$RoleTypeEnumMap, v)),
      imageId: $checkedConvert('image_id', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'organizationId': 'organization_id',
    'imageId': 'image_id',
  },
);

Map<String, dynamic> _$UserSchemeToJson(UserScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'username': instance.username,
      'fullname': instance.fullname,
      'organization_id': instance.organizationId,
      'role': _$RoleTypeEnumMap[instance.role]!,
      'image_id': instance.imageId,
    };

const _$RoleTypeEnumMap = {
  RoleType.creater: 'creater',
  RoleType.admin: 'admin',
  RoleType.manager: 'manager',
  RoleType.cashier: 'cashier',
  RoleType.waiter: 'waiter',
};
