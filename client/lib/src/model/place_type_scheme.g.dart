// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceTypeScheme _$PlaceTypeSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlaceTypeScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'name',
            'image_id',
            'description',
            'capacity',
            'is_private',
            'equipment',
            'priority',
            'fixed_price',
            'hourly_price',
            'percent_price',
            'organization_id',
          ],
        );
        final val = PlaceTypeScheme(
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
          organizationId: $checkedConvert(
            'organization_id',
            (v) => v as String,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'imageId': 'image_id',
        'isPrivate': 'is_private',
        'fixedPrice': 'fixed_price',
        'hourlyPrice': 'hourly_price',
        'percentPrice': 'percent_price',
        'organizationId': 'organization_id',
      },
    );

Map<String, dynamic> _$PlaceTypeSchemeToJson(PlaceTypeScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'image_id': instance.imageId,
      'description': instance.description,
      'capacity': instance.capacity,
      'is_private': instance.isPrivate,
      'equipment': instance.equipment,
      'priority': _$PlacePriorityEnumMap[instance.priority]!,
      'fixed_price': instance.fixedPrice,
      'hourly_price': instance.hourlyPrice,
      'percent_price': instance.percentPrice,
      'organization_id': instance.organizationId,
    };

const _$PlacePriorityEnumMap = {
  PlacePriority.veryHigh: 'very_high',
  PlacePriority.high: 'high',
  PlacePriority.standard: 'standard',
  PlacePriority.low: 'low',
};
