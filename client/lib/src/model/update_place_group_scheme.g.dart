// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_place_group_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlaceGroupScheme _$UpdatePlaceGroupSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdatePlaceGroupScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdatePlaceGroupScheme(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdatePlaceGroupSchemeToJson(
  UpdatePlaceGroupScheme instance,
) => <String, dynamic>{'name': instance.name};
