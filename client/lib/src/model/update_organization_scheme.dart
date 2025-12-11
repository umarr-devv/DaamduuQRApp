//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_organization_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateOrganizationScheme {
  /// Returns a new [UpdateOrganizationScheme] instance.
  UpdateOrganizationScheme({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateOrganizationScheme &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory UpdateOrganizationScheme.fromJson(Map<String, dynamic> json) => _$UpdateOrganizationSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrganizationSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

