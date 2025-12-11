// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductScheme _$UpdateProductSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateProductScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'name',
            'category_id',
            'description',
            'composition',
            'price',
            'cooking_minute',
            'tags',
          ],
        );
        final val = UpdateProductScheme(
          name: $checkedConvert('name', (v) => v as String),
          categoryId: $checkedConvert('category_id', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          composition: $checkedConvert('composition', (v) => v as String?),
          price: $checkedConvert('price', (v) => v as num),
          cookingMinute: $checkedConvert(
            'cooking_minute',
            (v) => (v as num).toInt(),
          ),
          tags: $checkedConvert(
            'tags',
            (v) => (v as List<dynamic>).map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'categoryId': 'category_id',
        'cookingMinute': 'cooking_minute',
      },
    );

Map<String, dynamic> _$UpdateProductSchemeToJson(
  UpdateProductScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_id': instance.categoryId,
  'description': instance.description,
  'composition': instance.composition,
  'price': instance.price,
  'cooking_minute': instance.cookingMinute,
  'tags': instance.tags,
};
