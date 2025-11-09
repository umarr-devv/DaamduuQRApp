// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailProductScheme _$DetailProductSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DetailProductScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'name',
            'category_id',
            'description',
            'composition',
            'price',
            'is_active',
            'tags',
            'category',
            'images',
            'portions',
          ],
        );
        final val = DetailProductScheme(
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
          categoryId: $checkedConvert('category_id', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          composition: $checkedConvert('composition', (v) => v as String?),
          price: $checkedConvert('price', (v) => v as num),
          isActive: $checkedConvert('is_active', (v) => v as bool),
          tags: $checkedConvert(
            'tags',
            (v) => (v as List<dynamic>).map((e) => e as String).toList(),
          ),
          category: $checkedConvert(
            'category',
            (v) => CategoryScheme.fromJson(v as Map<String, dynamic>),
          ),
          images: $checkedConvert(
            'images',
            (v) => (v as List<dynamic>)
                .map((e) => FileScheme.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          portions: $checkedConvert(
            'portions',
            (v) => (v as List<dynamic>)
                .map((e) => PortionScheme.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          establishments: $checkedConvert(
            'establishments',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => EstablishmentScheme.fromJson(
                        e as Map<String, dynamic>,
                      ),
                    )
                    .toList() ??
                [],
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'categoryId': 'category_id',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$DetailProductSchemeToJson(
  DetailProductScheme instance,
) => <String, dynamic>{
  'id': instance.id,
  'create_at': instance.createAt.toIso8601String(),
  'update_at': instance.updateAt.toIso8601String(),
  'name': instance.name,
  'category_id': instance.categoryId,
  'description': instance.description,
  'composition': instance.composition,
  'price': instance.price,
  'is_active': instance.isActive,
  'tags': instance.tags,
  'category': instance.category.toJson(),
  'images': instance.images.map((e) => e.toJson()).toList(),
  'portions': instance.portions.map((e) => e.toJson()).toList(),
  'establishments': ?instance.establishments?.map((e) => e.toJson()).toList(),
};
