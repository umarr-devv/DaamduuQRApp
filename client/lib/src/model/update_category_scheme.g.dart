// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryScheme _$UpdateCategorySchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCategoryScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name', 'description', 'is_active']);
  final val = UpdateCategoryScheme(
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    isActive: $checkedConvert('is_active', (v) => v as bool),
  );
  return val;
}, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$UpdateCategorySchemeToJson(
  UpdateCategoryScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'is_active': instance.isActive,
};
