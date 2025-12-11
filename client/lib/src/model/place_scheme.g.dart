// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceScheme _$PlaceSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PlaceScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'name',
        'code',
        'is_active',
        'location',
        'image_id_override',
        'description_override',
        'capacity_override',
        'is_private_override',
        'equipment_override',
        'priority_override',
        'fixed_price_override',
        'hourly_price_override',
        'percent_price_override',
        'establishment_id',
        'type_id',
        'group_id',
        'type',
        'group',
        'description',
        'capacity',
        'is_private',
        'equipment',
        'priority',
        'fixed_price',
        'hourly_price',
        'percent_price',
      ],
    );
    final val = PlaceScheme(
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
      code: $checkedConvert('code', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool),
      location: $checkedConvert('location', (v) => v as String?),
      imageIdOverride: $checkedConvert(
        'image_id_override',
        (v) => v as String?,
      ),
      descriptionOverride: $checkedConvert(
        'description_override',
        (v) => v as String?,
      ),
      capacityOverride: $checkedConvert(
        'capacity_override',
        (v) => (v as num?)?.toInt(),
      ),
      isPrivateOverride: $checkedConvert(
        'is_private_override',
        (v) => v as bool?,
      ),
      equipmentOverride: $checkedConvert(
        'equipment_override',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      priorityOverride: $checkedConvert(
        'priority_override',
        (v) => $enumDecodeNullable(_$PlacePriorityEnumMap, v),
      ),
      fixedPriceOverride: $checkedConvert(
        'fixed_price_override',
        (v) => v as num?,
      ),
      hourlyPriceOverride: $checkedConvert(
        'hourly_price_override',
        (v) => v as num?,
      ),
      percentPriceOverride: $checkedConvert(
        'percent_price_override',
        (v) => v as num?,
      ),
      establishmentId: $checkedConvert('establishment_id', (v) => v as String),
      typeId: $checkedConvert('type_id', (v) => v as String),
      groupId: $checkedConvert('group_id', (v) => v as String?),
      type: $checkedConvert(
        'type',
        (v) => PlaceTypeScheme.fromJson(v as Map<String, dynamic>),
      ),
      group: $checkedConvert(
        'group',
        (v) => v == null
            ? null
            : PlaceGroupScheme.fromJson(v as Map<String, dynamic>),
      ),
      imageId: $checkedConvert('image_id', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      capacity: $checkedConvert('capacity', (v) => (v as num?)?.toInt()),
      isPrivate: $checkedConvert('is_private', (v) => v as bool),
      equipment: $checkedConvert(
        'equipment',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      priority: $checkedConvert(
        'priority',
        (v) => $enumDecode(_$PlacePriorityEnumMap, v),
      ),
      fixedPrice: $checkedConvert('fixed_price', (v) => v as num),
      hourlyPrice: $checkedConvert('hourly_price', (v) => v as num),
      percentPrice: $checkedConvert('percent_price', (v) => v as num),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'isActive': 'is_active',
    'imageIdOverride': 'image_id_override',
    'descriptionOverride': 'description_override',
    'capacityOverride': 'capacity_override',
    'isPrivateOverride': 'is_private_override',
    'equipmentOverride': 'equipment_override',
    'priorityOverride': 'priority_override',
    'fixedPriceOverride': 'fixed_price_override',
    'hourlyPriceOverride': 'hourly_price_override',
    'percentPriceOverride': 'percent_price_override',
    'establishmentId': 'establishment_id',
    'typeId': 'type_id',
    'groupId': 'group_id',
    'imageId': 'image_id',
    'isPrivate': 'is_private',
    'fixedPrice': 'fixed_price',
    'hourlyPrice': 'hourly_price',
    'percentPrice': 'percent_price',
  },
);

Map<String, dynamic> _$PlaceSchemeToJson(PlaceScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'code': instance.code,
      'is_active': instance.isActive,
      'location': instance.location,
      'image_id_override': instance.imageIdOverride,
      'description_override': instance.descriptionOverride,
      'capacity_override': instance.capacityOverride,
      'is_private_override': instance.isPrivateOverride,
      'equipment_override': instance.equipmentOverride,
      'priority_override': _$PlacePriorityEnumMap[instance.priorityOverride],
      'fixed_price_override': instance.fixedPriceOverride,
      'hourly_price_override': instance.hourlyPriceOverride,
      'percent_price_override': instance.percentPriceOverride,
      'establishment_id': instance.establishmentId,
      'type_id': instance.typeId,
      'group_id': instance.groupId,
      'type': instance.type.toJson(),
      'group': instance.group?.toJson(),
      'image_id': ?instance.imageId,
      'description': instance.description,
      'capacity': instance.capacity,
      'is_private': instance.isPrivate,
      'equipment': instance.equipment,
      'priority': _$PlacePriorityEnumMap[instance.priority]!,
      'fixed_price': instance.fixedPrice,
      'hourly_price': instance.hourlyPrice,
      'percent_price': instance.percentPrice,
    };

const _$PlacePriorityEnumMap = {
  PlacePriority.veryHigh: 'very_high',
  PlacePriority.high: 'high',
  PlacePriority.standard: 'standard',
  PlacePriority.low: 'low',
};
