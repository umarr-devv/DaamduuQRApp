// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_story_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStoryScheme _$UpdateStorySchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateStoryScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'url', 'product_id', 'is_active'],
        );
        final val = UpdateStoryScheme(
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          productId: $checkedConvert('product_id', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {'productId': 'product_id', 'isActive': 'is_active'},
    );

Map<String, dynamic> _$UpdateStorySchemeToJson(UpdateStoryScheme instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'product_id': instance.productId,
      'is_active': instance.isActive,
    };
