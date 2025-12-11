// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_establishment_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEstablishmentScheme _$UpdateEstablishmentSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateEstablishmentScheme', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'name',
      'type',
      'description',
      'address',
      'latitude',
      'longitude',
      'menu_id',
    ],
  );
  final val = UpdateEstablishmentScheme(
    name: $checkedConvert('name', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$EstablishmentTypeEnumMap, v),
    ),
    description: $checkedConvert('description', (v) => v as String?),
    address: $checkedConvert('address', (v) => v as String),
    latitude: $checkedConvert('latitude', (v) => v as num?),
    longitude: $checkedConvert('longitude', (v) => v as num?),
    menuId: $checkedConvert('menu_id', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'menuId': 'menu_id'});

Map<String, dynamic> _$UpdateEstablishmentSchemeToJson(
  UpdateEstablishmentScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': _$EstablishmentTypeEnumMap[instance.type]!,
  'description': instance.description,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'menu_id': instance.menuId,
};

const _$EstablishmentTypeEnumMap = {
  EstablishmentType.restaurant: 'restaurant',
  EstablishmentType.fastFood: 'fast_food',
  EstablishmentType.cafe: 'cafe',
  EstablishmentType.confectionery: 'confectionery',
  EstablishmentType.bar: 'bar',
  EstablishmentType.coffeeShop: 'coffee_shop',
};
