// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_menu_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMenuScheme _$CreateMenuSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateMenuScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name', 'organization_id']);
      final val = CreateMenuScheme(
        name: $checkedConvert('name', (v) => v as String),
        organizationId: $checkedConvert('organization_id', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'organizationId': 'organization_id'});

Map<String, dynamic> _$CreateMenuSchemeToJson(CreateMenuScheme instance) =>
    <String, dynamic>{
      'name': instance.name,
      'organization_id': instance.organizationId,
    };
