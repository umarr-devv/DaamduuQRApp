// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_portion_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePortionScheme _$CreatePortionSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreatePortionScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name', 'price']);
      final val = CreatePortionScheme(
        name: $checkedConvert('name', (v) => v as String),
        price: $checkedConvert('price', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$CreatePortionSchemeToJson(
  CreatePortionScheme instance,
) => <String, dynamic>{'name': instance.name, 'price': instance.price};
