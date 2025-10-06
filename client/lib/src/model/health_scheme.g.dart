// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthScheme _$HealthSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('HealthScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['status']);
      final val = HealthScheme(
        status: $checkedConvert('status', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$HealthSchemeToJson(HealthScheme instance) =>
    <String, dynamic>{'status': instance.status};
