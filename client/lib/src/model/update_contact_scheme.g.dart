// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_contact_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateContactScheme _$UpdateContactSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateContactScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name', 'url', 'type']);
      final val = UpdateContactScheme(
        name: $checkedConvert('name', (v) => v as String?),
        url: $checkedConvert('url', (v) => v as String),
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$ContactTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateContactSchemeToJson(
  UpdateContactScheme instance,
) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'type': _$ContactTypeEnumMap[instance.type]!,
};

const _$ContactTypeEnumMap = {
  ContactType.phone: 'phone',
  ContactType.email: 'email',
  ContactType.whatsapp: 'whatsapp',
  ContactType.telegram: 'telegram',
  ContactType.instagram: 'instagram',
};
