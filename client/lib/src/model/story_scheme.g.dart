// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryScheme _$StorySchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'StoryScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'name',
        'url',
        'product_id',
        'image_id',
        'organization_id',
        'is_active',
        'content',
      ],
    );
    final val = StoryScheme(
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
      url: $checkedConvert('url', (v) => v as String?),
      productId: $checkedConvert('product_id', (v) => v as String?),
      imageId: $checkedConvert('image_id', (v) => v as String?),
      organizationId: $checkedConvert('organization_id', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool),
      content: $checkedConvert(
        'content',
        (v) => (v as List<dynamic>)
            .map((e) => FileScheme.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'productId': 'product_id',
    'imageId': 'image_id',
    'organizationId': 'organization_id',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$StorySchemeToJson(StoryScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'url': instance.url,
      'product_id': instance.productId,
      'image_id': instance.imageId,
      'organization_id': instance.organizationId,
      'is_active': instance.isActive,
      'content': instance.content.map((e) => e.toJson()).toList(),
    };
