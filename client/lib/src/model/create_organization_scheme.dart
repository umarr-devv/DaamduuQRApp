//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_organization_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateOrganizationScheme {
  /// Returns a new [CreateOrganizationScheme] instance.
  CreateOrganizationScheme({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateOrganizationScheme &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory CreateOrganizationScheme.fromJson(Map<String, dynamic> json) => _$CreateOrganizationSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrganizationSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

