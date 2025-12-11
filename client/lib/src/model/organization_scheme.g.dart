// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationScheme _$OrganizationSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrganizationScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'create_at', 'update_at', 'name'],
        );
        final val = OrganizationScheme(
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
        );
        return val;
      },
      fieldKeyMap: const {'createAt': 'create_at', 'updateAt': 'update_at'},
    );

Map<String, dynamic> _$OrganizationSchemeToJson(OrganizationScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'name': instance.name,
    };
