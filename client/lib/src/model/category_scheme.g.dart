// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryScheme _$CategorySchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CategoryScheme',
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
            'description',
            'is_active',
            'image_id',
          ],
        );
        final val = CategoryScheme(
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
          organizationId: $checkedConvert(
            'organization_id',
            (v) => v as String,
          ),
          description: $checkedConvert('description', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool),
          imageId: $checkedConvert('image_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'organizationId': 'organization_id',
        'isActive': 'is_active',
        'imageId': 'image_id',
      },
    );

Map<String, dynamic> _$CategorySchemeToJson(CategoryScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'organization_id': instance.organizationId,
      'description': instance.description,
      'is_active': instance.isActive,
      'image_id': instance.imageId,
    };
