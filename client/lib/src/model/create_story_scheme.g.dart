// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_story_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateStoryScheme _$CreateStorySchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CreateStoryScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'name',
            'url',
            'product_id',
            'organization_id',
            'is_active',
          ],
        );
        final val = CreateStoryScheme(
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          productId: $checkedConvert('product_id', (v) => v as String?),
          organizationId: $checkedConvert(
            'organization_id',
            (v) => v as String,
          ),
          isActive: $checkedConvert('is_active', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'organizationId': 'organization_id',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$CreateStorySchemeToJson(CreateStoryScheme instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'product_id': instance.productId,
      'organization_id': instance.organizationId,
      'is_active': instance.isActive,
    };
