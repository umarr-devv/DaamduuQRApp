// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileScheme _$FileSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'FileScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'file_name',
        'file_type',
      ],
    );
    final val = FileScheme(
      id: $checkedConvert('id', (v) => v as String),
      createAt: $checkedConvert(
        'create_at',
        (v) => DateTime.parse(v as String),
      ),
      updateAt: $checkedConvert(
        'update_at',
        (v) => DateTime.parse(v as String),
      ),
      fileName: $checkedConvert('file_name', (v) => v as String),
      fileType: $checkedConvert('file_type', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'fileName': 'file_name',
    'fileType': 'file_type',
  },
);

Map<String, dynamic> _$FileSchemeToJson(FileScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'file_name': instance.fileName,
      'file_type': instance.fileType,
    };
