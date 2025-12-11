// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hour_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingHourScheme _$WorkingHourSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'WorkingHourScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'day_of_week',
            'establishment_id',
            'open_time',
            'close_time',
            'is_work_day',
          ],
        );
        final val = WorkingHourScheme(
          id: $checkedConvert('id', (v) => v as String),
          createAt: $checkedConvert(
            'create_at',
            (v) => DateTime.parse(v as String),
          ),
          updateAt: $checkedConvert(
            'update_at',
            (v) => DateTime.parse(v as String),
          ),
          dayOfWeek: $checkedConvert(
            'day_of_week',
            (v) => $enumDecode(_$WeekDayEnumMap, v),
          ),
          establishmentId: $checkedConvert(
            'establishment_id',
            (v) => v as String,
          ),
          openTime: $checkedConvert('open_time', (v) => v as String?),
          closeTime: $checkedConvert('close_time', (v) => v as String?),
          isWorkDay: $checkedConvert('is_work_day', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'dayOfWeek': 'day_of_week',
        'establishmentId': 'establishment_id',
        'openTime': 'open_time',
        'closeTime': 'close_time',
        'isWorkDay': 'is_work_day',
      },
    );

Map<String, dynamic> _$WorkingHourSchemeToJson(WorkingHourScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'day_of_week': _$WeekDayEnumMap[instance.dayOfWeek]!,
      'establishment_id': instance.establishmentId,
      'open_time': instance.openTime,
      'close_time': instance.closeTime,
      'is_work_day': instance.isWorkDay,
    };

const _$WeekDayEnumMap = {
  WeekDay.monday: 'monday',
  WeekDay.tuesday: 'tuesday',
  WeekDay.wednesday: 'wednesday',
  WeekDay.thursday: 'thursday',
  WeekDay.friday: 'friday',
  WeekDay.saturday: 'saturday',
  WeekDay.sunday: 'sunday',
};
