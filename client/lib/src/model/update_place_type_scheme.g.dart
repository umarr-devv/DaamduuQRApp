// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_place_type_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlaceTypeScheme _$UpdatePlaceTypeSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdatePlaceTypeScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'name',
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
    final val = UpdatePlaceTypeScheme(
      name: $checkedConvert('name', (v) => v as String),
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
    'isPrivate': 'is_private',
    'fixedPrice': 'fixed_price',
    'hourlyPrice': 'hourly_price',
    'percentPrice': 'percent_price',
  },
);

Map<String, dynamic> _$UpdatePlaceTypeSchemeToJson(
  UpdatePlaceTypeScheme instance,
) => <String, dynamic>{
  'name': instance.name,
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
