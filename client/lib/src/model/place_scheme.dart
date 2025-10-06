//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/place_type_scheme.dart';
import 'package:daamduuqr_client/src/model/place_group_scheme.dart';
import 'package:daamduuqr_client/src/model/place_priority.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceScheme {
  /// Returns a new [PlaceScheme] instance.
  PlaceScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

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

    required  this.type,

    required  this.group,

     this.imageId,

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



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final PlaceTypeScheme type;



  @JsonKey(
    
    name: r'group',
    required: true,
    includeIfNull: true,
  )


  final PlaceGroupScheme? group;



  @JsonKey(
    
    name: r'image_id',
    required: false,
    includeIfNull: false,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaceScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
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
      other.groupId == groupId &&
      other.type == type &&
      other.group == group &&
      other.imageId == imageId &&
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
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
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
        (groupId == null ? 0 : groupId.hashCode) +
        type.hashCode +
        (group == null ? 0 : group.hashCode) +
        (imageId == null ? 0 : imageId.hashCode) +
        (description == null ? 0 : description.hashCode) +
        (capacity == null ? 0 : capacity.hashCode) +
        isPrivate.hashCode +
        equipment.hashCode +
        priority.hashCode +
        fixedPrice.hashCode +
        hourlyPrice.hashCode +
        percentPrice.hashCode;

  factory PlaceScheme.fromJson(Map<String, dynamic> json) => _$PlaceSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

