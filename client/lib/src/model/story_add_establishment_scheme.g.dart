// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_add_establishment_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryAddEstablishmentScheme _$StoryAddEstablishmentSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StoryAddEstablishmentScheme',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['establishment_ids']);
    final val = StoryAddEstablishmentScheme(
      establishmentIds: $checkedConvert(
        'establishment_ids',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'establishmentIds': 'establishment_ids'},
);

Map<String, dynamic> _$StoryAddEstablishmentSchemeToJson(
  StoryAddEstablishmentScheme instance,
) => <String, dynamic>{'establishment_ids': instance.establishmentIds};
