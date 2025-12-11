// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryScheme _$CreateCategorySchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CreateCategoryScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'name',
        'organization_id',
        'description',
        'is_active',
      ],
    );
    final val = CreateCategoryScheme(
      name: $checkedConvert('name', (v) => v as String),
      organizationId: $checkedConvert('organization_id', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool),
    );
    return val;
  },
  fieldKeyMap: const {
    'organizationId': 'organization_id',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$CreateCategorySchemeToJson(
  CreateCategoryScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'organization_id': instance.organizationId,
  'description': instance.description,
  'is_active': instance.isActive,
};
