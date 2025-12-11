//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/place_priority.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_place_type_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePlaceTypeScheme {
  /// Returns a new [CreatePlaceTypeScheme] instance.
  CreatePlaceTypeScheme({

    required  this.name,

    required  this.description,

    required  this.capacity,

    required  this.isPrivate,

    required  this.equipment,

    required  this.priority,

    required  this.fixedPrice,

    required  this.hourlyPrice,

    required  this.percentPrice,

    required  this.organizationId,
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
    
    name: r'capacity',
    required: true,
    includeIfNull: true,
  )


  final int? capacity;



  @JsonKey(
    
    name: r'is_private',
    required: true,
    includeIfNull: true,
  )


  final bool? isPrivate;



  @JsonKey(
    
    name: r'equipment',
    required: true,
    includeIfNull: true,
  )


  final List<String>? equipment;



  @JsonKey(
    
    name: r'priority',
    required: true,
    includeIfNull: true,
  )


  final PlacePriority? priority;



  @JsonKey(
    
    name: r'fixed_price',
    required: true,
    includeIfNull: true,
  )


  final num? fixedPrice;



  @JsonKey(
    
    name: r'hourly_price',
    required: true,
    includeIfNull: true,
  )


  final num? hourlyPrice;



  @JsonKey(
    
    name: r'percent_price',
    required: true,
    includeIfNull: true,
  )


  final num? percentPrice;



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreatePlaceTypeScheme &&
      other.name == name &&
      other.description == description &&
      other.capacity == capacity &&
      other.isPrivate == isPrivate &&
      other.equipment == equipment &&
      other.priority == priority &&
      other.fixedPrice == fixedPrice &&
      other.hourlyPrice == hourlyPrice &&
      other.percentPrice == percentPrice &&
      other.organizationId == organizationId;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        (capacity == null ? 0 : capacity.hashCode) +
        (isPrivate == null ? 0 : isPrivate.hashCode) +
        (equipment == null ? 0 : equipment.hashCode) +
        (priority == null ? 0 : priority.hashCode) +
        (fixedPrice == null ? 0 : fixedPrice.hashCode) +
        (hourlyPrice == null ? 0 : hourlyPrice.hashCode) +
        (percentPrice == null ? 0 : percentPrice.hashCode) +
        organizationId.hashCode;

  factory CreatePlaceTypeScheme.fromJson(Map<String, dynamic> json) => _$CreatePlaceTypeSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaceTypeSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

