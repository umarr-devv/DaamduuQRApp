// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuScheme _$MenuSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'MenuScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'name',
        'organization_id',
      ],
    );
    final val = MenuScheme(
      id: $checkedConvert('id', (v) => v as String),
      createAt: $checkedConvert(
        'create_at',
        (v) => DateTime.parse(v as String),
      ),
      updateAt: $checkedConvert(
        'update_at',
        (v) => DateTime.parse(v as String),
      ),
      name: $checkedConvert('name', (v) => v as String),
      organizationId: $checkedConvert('organization_id', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'organizationId': 'organization_id',
  },
);

Map<String, dynamic> _$MenuSchemeToJson(MenuScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'organization_id': instance.organizationId,
    };
