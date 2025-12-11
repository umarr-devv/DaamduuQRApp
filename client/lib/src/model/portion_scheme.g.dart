// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portion_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortionScheme _$PortionSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PortionScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'name',
            'price',
            'product_id',
          ],
        );
        final val = PortionScheme(
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
          price: $checkedConvert('price', (v) => v as num),
          productId: $checkedConvert('product_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'productId': 'product_id',
      },
    );

Map<String, dynamic> _$PortionSchemeToJson(PortionScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'price': instance.price,
      'product_id': instance.productId,
    };
