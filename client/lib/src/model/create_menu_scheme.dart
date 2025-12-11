//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_menu_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateMenuScheme {
  /// Returns a new [CreateMenuScheme] instance.
  CreateMenuScheme({

    required  this.name,

    required  this.organizationId,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateMenuScheme &&
      other.name == name &&
      other.organizationId == organizationId;

    @override
    int get hashCode =>
        name.hashCode +
        organizationId.hashCode;

  factory CreateMenuScheme.fromJson(Map<String, dynamic> json) => _$CreateMenuSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateMenuSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

