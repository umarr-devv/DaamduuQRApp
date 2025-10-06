//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum OrderItemStatus {
      @JsonValue(r'pending')
      pending(r'pending'),
      @JsonValue(r'in_progress')
      inProgress(r'in_progress'),
      @JsonValue(r'rejected')
      rejected(r'rejected'),
      @JsonValue(r'cancelled')
      cancelled(r'cancelled'),
      @JsonValue(r'finished')
      finished(r'finished');

  const OrderItemStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
