// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstablishmentScheme _$EstablishmentSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'EstablishmentScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'name',
        'organization_id',
        'type',
        'description',
        'address',
        'latitude',
        'longitude',
        'menu_id',
        'menu',
        'images',
        'contacts',
      ],
    );
    final val = EstablishmentScheme(
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
      menu: $checkedConvert(
        'menu',
        (v) =>
            v == null ? null : MenuScheme.fromJson(v as Map<String, dynamic>),
      ),
      images: $checkedConvert(
        'images',
        (v) => (v as List<dynamic>)
            .map((e) => FileScheme.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      contacts: $checkedConvert(
        'contacts',
        (v) => (v as List<dynamic>)
            .map((e) => ContactScheme.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'organizationId': 'organization_id',
    'menuId': 'menu_id',
  },
);

Map<String, dynamic> _$EstablishmentSchemeToJson(
  EstablishmentScheme instance,
) => <String, dynamic>{
  'id': instance.id,
  'create_at': instance.createAt.toIso8601String(),
  'update_at': instance.updateAt.toIso8601String(),
  'name': instance.name,
  'organization_id': instance.organizationId,
  'type': _$EstablishmentTypeEnumMap[instance.type]!,
  'description': instance.description,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'menu_id': instance.menuId,
  'menu': instance.menu?.toJson(),
  'images': instance.images.map((e) => e.toJson()).toList(),
  'contacts': instance.contacts.map((e) => e.toJson()).toList(),
};

const _$EstablishmentTypeEnumMap = {
  EstablishmentType.restaurant: 'restaurant',
  EstablishmentType.fastFood: 'fast_food',
  EstablishmentType.cafe: 'cafe',
  EstablishmentType.confectionery: 'confectionery',
  EstablishmentType.bar: 'bar',
  EstablishmentType.coffeeShop: 'coffee_shop',
};
