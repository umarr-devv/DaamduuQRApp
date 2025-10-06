// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_group_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceGroupScheme _$PlaceGroupSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlaceGroupScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'name',
            'establishment_id',
          ],
        );
        final val = PlaceGroupScheme(
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
          establishmentId: $checkedConvert(
            'establishment_id',
            (v) => v as String,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'establishmentId': 'establishment_id',
      },
    );

Map<String, dynamic> _$PlaceGroupSchemeToJson(PlaceGroupScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
      'establishment_id': instance.establishmentId,
    };
