//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_category_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCategoryScheme {
  /// Returns a new [CreateCategoryScheme] instance.
  CreateCategoryScheme({

    required  this.name,

    required  this.organizationId,

    required  this.description,

    required  this.isActive,
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



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: true,
  )


  final String? description;



  @JsonKey(
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCategoryScheme &&
      other.name == name &&
      other.organizationId == organizationId &&
      other.description == description &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        organizationId.hashCode +
        (description == null ? 0 : description.hashCode) +
        isActive.hashCode;

  factory CreateCategoryScheme.fromJson(Map<String, dynamic> json) => _$CreateCategorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCategorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

