//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ContactType {
      @JsonValue(r'phone')
      phone(r'phone'),
      @JsonValue(r'email')
      email(r'email'),
      @JsonValue(r'whatsapp')
      whatsapp(r'whatsapp'),
      @JsonValue(r'telegram')
      telegram(r'telegram'),
      @JsonValue(r'instagram')
      instagram(r'instagram');

  const ContactType(this.value);

  final String value;

  @override
  String toString() => value;
}
