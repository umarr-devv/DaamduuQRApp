//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'category_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CategoryScheme {
  /// Returns a new [CategoryScheme] instance.
  CategoryScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.organizationId,

    required  this.description,

    required  this.isActive,

    required  this.imageId,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'create_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createAt;



  @JsonKey(
    
    name: r'update_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime updateAt;



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



  @JsonKey(
    
    name: r'image_id',
    required: true,
    includeIfNull: true,
  )


  final String? imageId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CategoryScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.organizationId == organizationId &&
      other.description == description &&
      other.isActive == isActive &&
      other.imageId == imageId;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        organizationId.hashCode +
        (description == null ? 0 : description.hashCode) +
        isActive.hashCode +
        (imageId == null ? 0 : imageId.hashCode);

  factory CategoryScheme.fromJson(Map<String, dynamic> json) => _$CategorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CategorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

