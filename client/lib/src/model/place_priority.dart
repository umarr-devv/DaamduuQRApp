//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PlacePriority {
      @JsonValue(r'very_high')
      veryHigh(r'very_high'),
      @JsonValue(r'high')
      high(r'high'),
      @JsonValue(r'standard')
      standard(r'standard'),
      @JsonValue(r'low')
      low(r'low');

  const PlacePriority(this.value);

  final String value;

  @override
  String toString() => value;
}
