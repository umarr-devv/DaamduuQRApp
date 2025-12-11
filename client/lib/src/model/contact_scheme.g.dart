// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactScheme _$ContactSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ContactScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'name',
            'url',
            'type',
          ],
        );
        final val = ContactScheme(
          id: $checkedConvert('id', (v) => v as String),
          createAt: $checkedConvert(
            'create_at',
            (v) => DateTime.parse(v as String),
          ),
          updateAt: $checkedConvert(
            'update_at',
            (v) => DateTime.parse(v as String),
          ),
          name: $checkedConvert('name', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String),
          type: $checkedConvert(
            'type',
            (v) => $enumDecode(_$ContactTypeEnumMap, v),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'createAt': 'create_at', 'updateAt': 'update_at'},
    );

Map<String, dynamic> _$ContactSchemeToJson(ContactScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
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
