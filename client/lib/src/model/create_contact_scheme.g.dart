// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_contact_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateContactScheme _$CreateContactSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateContactScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name', 'url', 'type']);
      final val = CreateContactScheme(
        name: $checkedConvert('name', (v) => v as String?),
        url: $checkedConvert('url', (v) => v as String),
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$ContactTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreateContactSchemeToJson(
  CreateContactScheme instance,
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
