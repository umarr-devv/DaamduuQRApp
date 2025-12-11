//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/file_scheme.dart';
import 'package:daamduuqr_client/src/model/category_scheme.dart';
import 'package:daamduuqr_client/src/model/portion_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductScheme {
  /// Returns a new [ProductScheme] instance.
  ProductScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.categoryId,

    required  this.description,

    required  this.composition,

    required  this.price,

    required  this.cookingMinute,

    required  this.tags,

    required  this.category,

    required  this.images,

    required  this.portions,
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
    
    name: r'cooking_minute',
    required: true,
    includeIfNull: false,
  )


  final int cookingMinute;



  @JsonKey(
    
    name: r'tags',
    required: true,
    includeIfNull: false,
  )


  final List<String> tags;



  @JsonKey(
    
    name: r'category',
    required: true,
    includeIfNull: false,
  )


  final CategoryScheme category;



  @JsonKey(
    
    name: r'images',
    required: true,
    includeIfNull: false,
  )


  final List<FileScheme> images;



  @JsonKey(
    
    name: r'portions',
    required: true,
    includeIfNull: false,
  )


  final List<PortionScheme> portions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.categoryId == categoryId &&
      other.description == description &&
      other.composition == composition &&
      other.price == price &&
      other.cookingMinute == cookingMinute &&
      other.tags == tags &&
      other.category == category &&
      other.images == images &&
      other.portions == portions;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        categoryId.hashCode +
        (description == null ? 0 : description.hashCode) +
        (composition == null ? 0 : composition.hashCode) +
        price.hashCode +
        cookingMinute.hashCode +
        tags.hashCode +
        category.hashCode +
        images.hashCode +
        portions.hashCode;

  factory ProductScheme.fromJson(Map<String, dynamic> json) => _$ProductSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$ProductSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

