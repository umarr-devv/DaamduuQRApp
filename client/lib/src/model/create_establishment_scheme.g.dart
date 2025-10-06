// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_establishment_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateEstablishmentScheme _$CreateEstablishmentSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CreateEstablishmentScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'name',
        'organization_id',
        'type',
        'description',
        'address',
        'latitude',
        'longitude',
        'menu_id',
      ],
    );
    final val = CreateEstablishmentScheme(
      name: $checkedConvert('name', (v) => v as String),
      organizationId: $checkedConvert('organization_id', (v) => v as String),
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
  },
  fieldKeyMap: const {'organizationId': 'organization_id', 'menuId': 'menu_id'},
);

Map<String, dynamic> _$CreateEstablishmentSchemeToJson(
  CreateEstablishmentScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'organization_id': instance.organizationId,
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
