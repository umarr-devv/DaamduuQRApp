// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductScheme _$CreateProductSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CreateProductScheme',
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
            'is_active',
            'tags',
          ],
        );
        final val = CreateProductScheme(
          name: $checkedConvert('name', (v) => v as String),
          categoryId: $checkedConvert('category_id', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          composition: $checkedConvert('composition', (v) => v as String?),
          price: $checkedConvert('price', (v) => v as num),
          isActive: $checkedConvert('is_active', (v) => v as bool),
          tags: $checkedConvert(
            'tags',
            (v) => (v as List<dynamic>).map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'categoryId': 'category_id', 'isActive': 'is_active'},
    );

Map<String, dynamic> _$CreateProductSchemeToJson(
  CreateProductScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_id': instance.categoryId,
  'description': instance.description,
  'composition': instance.composition,
  'price': instance.price,
  'is_active': instance.isActive,
  'tags': instance.tags,
};
