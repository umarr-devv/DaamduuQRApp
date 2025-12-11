// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_place_group_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePlaceGroupScheme _$CreatePlaceGroupSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CreatePlaceGroupScheme',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name', 'establishment_id']);
    final val = CreatePlaceGroupScheme(
      name: $checkedConvert('name', (v) => v as String),
      establishmentId: $checkedConvert('establishment_id', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {'establishmentId': 'establishment_id'},
);

Map<String, dynamic> _$CreatePlaceGroupSchemeToJson(
  CreatePlaceGroupScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'establishment_id': instance.establishmentId,
};
