// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_add_product_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuAddProductScheme _$MenuAddProductSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MenuAddProductScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['product_ids']);
  final val = MenuAddProductScheme(
    productIds: $checkedConvert(
      'product_ids',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'productIds': 'product_ids'});

Map<String, dynamic> _$MenuAddProductSchemeToJson(
  MenuAddProductScheme instance,
) => <String, dynamic>{'product_ids': instance.productIds};
