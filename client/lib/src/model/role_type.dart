//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RoleType {
      @JsonValue(r'creater')
      creater(r'creater'),
      @JsonValue(r'admin')
      admin(r'admin'),
      @JsonValue(r'manager')
      manager(r'manager'),
      @JsonValue(r'cashier')
      cashier(r'cashier'),
      @JsonValue(r'waiter')
      waiter(r'waiter');

  const RoleType(this.value);

  final String value;

  @override
  String toString() => value;
}
