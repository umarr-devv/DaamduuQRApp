// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_organization_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrganizationScheme _$CreateOrganizationSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateOrganizationScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CreateOrganizationScheme(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateOrganizationSchemeToJson(
  CreateOrganizationScheme instance,
) => <String, dynamic>{'name': instance.name};
