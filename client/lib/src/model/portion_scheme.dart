//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'portion_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PortionScheme {
  /// Returns a new [PortionScheme] instance.
  PortionScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.price,

    required  this.productId,
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
    
    name: r'price',
    required: true,
    includeIfNull: false,
  )


  final num price;



  @JsonKey(
    
    name: r'product_id',
    required: true,
    includeIfNull: false,
  )


  final String productId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PortionScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.price == price &&
      other.productId == productId;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        price.hashCode +
        productId.hashCode;

  factory PortionScheme.fromJson(Map<String, dynamic> json) => _$PortionSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$PortionSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

