// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_place_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlaceScheme _$UpdatePlaceSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdatePlaceScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
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
            'type_id',
            'group_id',
          ],
        );
        final val = UpdatePlaceScheme(
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
          typeId: $checkedConvert('type_id', (v) => v as String),
          groupId: $checkedConvert('group_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
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
        'typeId': 'type_id',
        'groupId': 'group_id',
      },
    );

Map<String, dynamic> _$UpdatePlaceSchemeToJson(UpdatePlaceScheme instance) =>
    <String, dynamic>{
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
      'type_id': instance.typeId,
      'group_id': instance.groupId,
    };

const _$PlacePriorityEnumMap = {
  PlacePriority.veryHigh: 'very_high',
  PlacePriority.high: 'high',
  PlacePriority.standard: 'standard',
  PlacePriority.low: 'low',
};
