// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_delete_product_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuDeleteProductScheme _$MenuDeleteProductSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MenuDeleteProductScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['product_ids']);
  final val = MenuDeleteProductScheme(
    productIds: $checkedConvert(
      'product_ids',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'productIds': 'product_ids'});

Map<String, dynamic> _$MenuDeleteProductSchemeToJson(
  MenuDeleteProductScheme instance,
) => <String, dynamic>{'product_ids': instance.productIds};
