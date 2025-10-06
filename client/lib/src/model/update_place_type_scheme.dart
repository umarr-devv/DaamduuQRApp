//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/place_priority.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_place_type_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePlaceTypeScheme {
  /// Returns a new [UpdatePlaceTypeScheme] instance.
  UpdatePlaceTypeScheme({

    required  this.name,

    required  this.description,

    required  this.capacity,

    required  this.isPrivate,

    required  this.equipment,

    required  this.priority,

    required  this.fixedPrice,

    required  this.hourlyPrice,

    required  this.percentPrice,
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
    includeIfNull: false,
  )


  final bool isPrivate;



  @JsonKey(
    
    name: r'equipment',
    required: true,
    includeIfNull: false,
  )


  final List<String> equipment;



  @JsonKey(
    
    name: r'priority',
    required: true,
    includeIfNull: false,
  )


  final PlacePriority priority;



  @JsonKey(
    
    name: r'fixed_price',
    required: true,
    includeIfNull: false,
  )


  final num fixedPrice;



  @JsonKey(
    
    name: r'hourly_price',
    required: true,
    includeIfNull: false,
  )


  final num hourlyPrice;



  @JsonKey(
    
    name: r'percent_price',
    required: true,
    includeIfNull: false,
  )


  final num percentPrice;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdatePlaceTypeScheme &&
      other.name == name &&
      other.description == description &&
      other.capacity == capacity &&
      other.isPrivate == isPrivate &&
      other.equipment == equipment &&
      other.priority == priority &&
      other.fixedPrice == fixedPrice &&
      other.hourlyPrice == hourlyPrice &&
      other.percentPrice == percentPrice;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        (capacity == null ? 0 : capacity.hashCode) +
        isPrivate.hashCode +
        equipment.hashCode +
        priority.hashCode +
        fixedPrice.hashCode +
        hourlyPrice.hashCode +
        percentPrice.hashCode;

  factory UpdatePlaceTypeScheme.fromJson(Map<String, dynamic> json) => _$UpdatePlaceTypeSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePlaceTypeSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

