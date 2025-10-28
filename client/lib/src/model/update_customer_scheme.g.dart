// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCustomerScheme _$UpdateCustomerSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdateCustomerScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['fullname', 'email', 'phone_number', 'push_token'],
    );
    final val = UpdateCustomerScheme(
      fullname: $checkedConvert('fullname', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
      pushToken: $checkedConvert('push_token', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'phoneNumber': 'phone_number', 'pushToken': 'push_token'},
);

Map<String, dynamic> _$UpdateCustomerSchemeToJson(
  UpdateCustomerScheme instance,
) => <String, dynamic>{
  'fullname': instance.fullname,
  'email': instance.email,
  'phone_number': instance.phoneNumber,
  'push_token': instance.pushToken,
};
