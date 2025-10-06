//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'health_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HealthScheme {
  /// Returns a new [HealthScheme] instance.
  HealthScheme({

    required  this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HealthScheme &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory HealthScheme.fromJson(Map<String, dynamic> json) => _$HealthSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$HealthSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

