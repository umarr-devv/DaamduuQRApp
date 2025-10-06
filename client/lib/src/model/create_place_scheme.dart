//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/place_priority.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_place_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePlaceScheme {
  /// Returns a new [CreatePlaceScheme] instance.
  CreatePlaceScheme({

    required  this.name,

    required  this.code,

    required  this.isActive,

    required  this.location,

    required  this.imageIdOverride,

    required  this.descriptionOverride,

    required  this.capacityOverride,

    required  this.isPrivateOverride,

    required  this.equipmentOverride,

    required  this.priorityOverride,

    required  this.fixedPriceOverride,

    required  this.hourlyPriceOverride,

    required  this.percentPriceOverride,

    required  this.establishmentId,

    required  this.typeId,

    required  this.groupId,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: true,
  )


  final String? code;



  @JsonKey(
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



  @JsonKey(
    
    name: r'location',
    required: true,
    includeIfNull: true,
  )


  final String? location;



  @JsonKey(
    
    name: r'image_id_override',
    required: true,
    includeIfNull: true,
  )


  final String? imageIdOverride;



  @JsonKey(
    
    name: r'description_override',
    required: true,
    includeIfNull: true,
  )


  final String? descriptionOverride;



  @JsonKey(
    
    name: r'capacity_override',
    required: true,
    includeIfNull: true,
  )


  final int? capacityOverride;



  @JsonKey(
    
    name: r'is_private_override',
    required: true,
    includeIfNull: true,
  )


  final bool? isPrivateOverride;



  @JsonKey(
    
    name: r'equipment_override',
    required: true,
    includeIfNull: true,
  )


  final List<String>? equipmentOverride;



  @JsonKey(
    
    name: r'priority_override',
    required: true,
    includeIfNull: true,
  )


  final PlacePriority? priorityOverride;



  @JsonKey(
    
    name: r'fixed_price_override',
    required: true,
    includeIfNull: true,
  )


  final num? fixedPriceOverride;



  @JsonKey(
    
    name: r'hourly_price_override',
    required: true,
    includeIfNull: true,
  )


  final num? hourlyPriceOverride;



  @JsonKey(
    
    name: r'percent_price_override',
    required: true,
    includeIfNull: true,
  )


  final num? percentPriceOverride;



  @JsonKey(
    
    name: r'establishment_id',
    required: true,
    includeIfNull: false,
  )


  final String establishmentId;



  @JsonKey(
    
    name: r'type_id',
    required: true,
    includeIfNull: false,
  )


  final String typeId;



  @JsonKey(
    
    name: r'group_id',
    required: true,
    includeIfNull: true,
  )


  final String? groupId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreatePlaceScheme &&
      other.name == name &&
      other.code == code &&
      other.isActive == isActive &&
      other.location == location &&
      other.imageIdOverride == imageIdOverride &&
      other.descriptionOverride == descriptionOverride &&
      other.capacityOverride == capacityOverride &&
      other.isPrivateOverride == isPrivateOverride &&
      other.equipmentOverride == equipmentOverride &&
      other.priorityOverride == priorityOverride &&
      other.fixedPriceOverride == fixedPriceOverride &&
      other.hourlyPriceOverride == hourlyPriceOverride &&
      other.percentPriceOverride == percentPriceOverride &&
      other.establishmentId == establishmentId &&
      other.typeId == typeId &&
      other.groupId == groupId;

    @override
    int get hashCode =>
        name.hashCode +
        (code == null ? 0 : code.hashCode) +
        isActive.hashCode +
        (location == null ? 0 : location.hashCode) +
        (imageIdOverride == null ? 0 : imageIdOverride.hashCode) +
        (descriptionOverride == null ? 0 : descriptionOverride.hashCode) +
        (capacityOverride == null ? 0 : capacityOverride.hashCode) +
        (isPrivateOverride == null ? 0 : isPrivateOverride.hashCode) +
        (equipmentOverride == null ? 0 : equipmentOverride.hashCode) +
        (priorityOverride == null ? 0 : priorityOverride.hashCode) +
        (fixedPriceOverride == null ? 0 : fixedPriceOverride.hashCode) +
        (hourlyPriceOverride == null ? 0 : hourlyPriceOverride.hashCode) +
        (percentPriceOverride == null ? 0 : percentPriceOverride.hashCode) +
        establishmentId.hashCode +
        typeId.hashCode +
        (groupId == null ? 0 : groupId.hashCode);

  factory CreatePlaceScheme.fromJson(Map<String, dynamic> json) => _$CreatePlaceSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaceSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

