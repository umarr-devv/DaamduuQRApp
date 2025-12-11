//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_category_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCategoryScheme {
  /// Returns a new [UpdateCategoryScheme] instance.
  UpdateCategoryScheme({

    required  this.name,

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
    bool operator ==(Object other) => identical(this, other) || other is UpdateCategoryScheme &&
      other.name == name &&
      other.description == description &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        isActive.hashCode;

  factory UpdateCategoryScheme.fromJson(Map<String, dynamic> json) => _$UpdateCategorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCategorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

