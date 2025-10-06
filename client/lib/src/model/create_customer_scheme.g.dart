// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerScheme _$CreateCustomerSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCustomerScheme', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['email', 'phone_number', 'fullname']);
  final val = CreateCustomerScheme(
    email: $checkedConvert('email', (v) => v as String?),
    phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
    fullname: $checkedConvert('fullname', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'phoneNumber': 'phone_number'});

Map<String, dynamic> _$CreateCustomerSchemeToJson(
  CreateCustomerScheme instance,
) => <String, dynamic>{
  'email': instance.email,
  'phone_number': instance.phoneNumber,
  'fullname': instance.fullname,
};
