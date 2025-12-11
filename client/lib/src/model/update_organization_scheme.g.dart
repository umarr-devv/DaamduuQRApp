// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_organization_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrganizationScheme _$UpdateOrganizationSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateOrganizationScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdateOrganizationScheme(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateOrganizationSchemeToJson(
  UpdateOrganizationScheme instance,
) => <String, dynamic>{'name': instance.name};
