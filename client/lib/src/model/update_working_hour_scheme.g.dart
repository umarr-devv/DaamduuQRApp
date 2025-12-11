// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_working_hour_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateWorkingHourScheme _$UpdateWorkingHourSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdateWorkingHourScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'day_of_week',
        'open_time',
        'close_time',
        'is_work_day',
      ],
    );
    final val = UpdateWorkingHourScheme(
      dayOfWeek: $checkedConvert(
        'day_of_week',
        (v) => $enumDecode(_$WeekDayEnumMap, v),
      ),
      openTime: $checkedConvert('open_time', (v) => v as String?),
      closeTime: $checkedConvert('close_time', (v) => v as String?),
      isWorkDay: $checkedConvert('is_work_day', (v) => v as bool),
    );
    return val;
  },
  fieldKeyMap: const {
    'dayOfWeek': 'day_of_week',
    'openTime': 'open_time',
    'closeTime': 'close_time',
    'isWorkDay': 'is_work_day',
  },
);

Map<String, dynamic> _$UpdateWorkingHourSchemeToJson(
  UpdateWorkingHourScheme instance,
) => <String, dynamic>{
  'day_of_week': _$WeekDayEnumMap[instance.dayOfWeek]!,
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
