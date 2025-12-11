// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_menu_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMenuScheme _$UpdateMenuSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateMenuScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = UpdateMenuScheme(
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$UpdateMenuSchemeToJson(UpdateMenuScheme instance) =>
    <String, dynamic>{'name': instance.name};
