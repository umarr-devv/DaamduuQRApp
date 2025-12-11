//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/place_priority.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_type_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceTypeScheme {
  /// Returns a new [PlaceTypeScheme] instance.
  PlaceTypeScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.imageId,

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
    
    name: r'image_id',
    required: true,
    includeIfNull: true,
  )


  final String? imageId;



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



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaceTypeScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.imageId == imageId &&
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
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        (imageId == null ? 0 : imageId.hashCode) +
        (description == null ? 0 : description.hashCode) +
        (capacity == null ? 0 : capacity.hashCode) +
        isPrivate.hashCode +
        equipment.hashCode +
        priority.hashCode +
        fixedPrice.hashCode +
        hourlyPrice.hashCode +
        percentPrice.hashCode +
        organizationId.hashCode;

  factory PlaceTypeScheme.fromJson(Map<String, dynamic> json) => _$PlaceTypeSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceTypeSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

