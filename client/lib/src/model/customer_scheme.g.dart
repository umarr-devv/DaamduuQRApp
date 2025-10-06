// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerScheme _$CustomerSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CustomerScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'email',
            'phone_number',
            'push_token',
            'fullname',
          ],
        );
        final val = CustomerScheme(
          id: $checkedConvert('id', (v) => v as String),
          createAt: $checkedConvert(
            'create_at',
            (v) => DateTime.parse(v as String),
          ),
          updateAt: $checkedConvert(
            'update_at',
            (v) => DateTime.parse(v as String),
          ),
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          pushToken: $checkedConvert('push_token', (v) => v as String?),
          fullname: $checkedConvert('fullname', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'phoneNumber': 'phone_number',
        'pushToken': 'push_token',
      },
    );

Map<String, dynamic> _$CustomerSchemeToJson(CustomerScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'push_token': instance.pushToken,
      'fullname': instance.fullname,
    };
