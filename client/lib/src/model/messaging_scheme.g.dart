// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagingScheme _$MessagingSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MessagingScheme', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['push_tokens', 'title', 'body', 'image'],
      );
      final val = MessagingScheme(
        pushTokens: $checkedConvert(
          'push_tokens',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        title: $checkedConvert('title', (v) => v as String),
        body: $checkedConvert('body', (v) => v as String?),
        image: $checkedConvert('image', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'pushTokens': 'push_tokens'});

Map<String, dynamic> _$MessagingSchemeToJson(MessagingScheme instance) =>
    <String, dynamic>{
      'push_tokens': instance.pushTokens,
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
    };
