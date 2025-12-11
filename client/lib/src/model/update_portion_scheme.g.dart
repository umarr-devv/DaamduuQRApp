// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_portion_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePortionScheme _$UpdatePortionSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdatePortionScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name', 'price']);
      final val = UpdatePortionScheme(
        name: $checkedConvert('name', (v) => v as String),
        price: $checkedConvert('price', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$UpdatePortionSchemeToJson(
  UpdatePortionScheme instance,
) => <String, dynamic>{'name': instance.name, 'price': instance.price};
