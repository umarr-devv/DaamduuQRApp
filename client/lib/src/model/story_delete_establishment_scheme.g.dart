// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_delete_establishment_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryDeleteEstablishmentScheme _$StoryDeleteEstablishmentSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StoryDeleteEstablishmentScheme',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['establishment_ids']);
    final val = StoryDeleteEstablishmentScheme(
      establishmentIds: $checkedConvert(
        'establishment_ids',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'establishmentIds': 'establishment_ids'},
);

Map<String, dynamic> _$StoryDeleteEstablishmentSchemeToJson(
  StoryDeleteEstablishmentScheme instance,
) => <String, dynamic>{'establishment_ids': instance.establishmentIds};
