//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_product_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateProductScheme {
  /// Returns a new [UpdateProductScheme] instance.
  UpdateProductScheme({

    required  this.name,

    required  this.categoryId,

    required  this.description,

    required  this.composition,

    required  this.price,

    required  this.isActive,

    required  this.tags,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'category_id',
    required: true,
    includeIfNull: false,
  )


  final String categoryId;



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: true,
  )


  final String? description;



  @JsonKey(
    
    name: r'composition',
    required: true,
    includeIfNull: true,
  )


  final String? composition;



  @JsonKey(
    
    name: r'price',
    required: true,
    includeIfNull: false,
  )


  final num price;



  @JsonKey(
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



  @JsonKey(
    
    name: r'tags',
    required: true,
    includeIfNull: false,
  )


  final List<String> tags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateProductScheme &&
      other.name == name &&
      other.categoryId == categoryId &&
      other.description == description &&
      other.composition == composition &&
      other.price == price &&
      other.isActive == isActive &&
      other.tags == tags;

    @override
    int get hashCode =>
        name.hashCode +
        categoryId.hashCode +
        (description == null ? 0 : description.hashCode) +
        (composition == null ? 0 : composition.hashCode) +
        price.hashCode +
        isActive.hashCode +
        tags.hashCode;

  factory UpdateProductScheme.fromJson(Map<String, dynamic> json) => _$UpdateProductSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProductSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

