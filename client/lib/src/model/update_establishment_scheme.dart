//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/establishment_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_establishment_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateEstablishmentScheme {
  /// Returns a new [UpdateEstablishmentScheme] instance.
  UpdateEstablishmentScheme({

    required  this.name,

    required  this.type,

    required  this.description,

    required  this.address,

    required  this.latitude,

    required  this.longitude,

    required  this.menuId,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final EstablishmentType type;



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: true,
  )


  final String? description;



  @JsonKey(
    
    name: r'address',
    required: true,
    includeIfNull: false,
  )


  final String address;



  @JsonKey(
    
    name: r'latitude',
    required: true,
    includeIfNull: true,
  )


  final num? latitude;



  @JsonKey(
    
    name: r'longitude',
    required: true,
    includeIfNull: true,
  )


  final num? longitude;



  @JsonKey(
    
    name: r'menu_id',
    required: true,
    includeIfNull: true,
  )


  final String? menuId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateEstablishmentScheme &&
      other.name == name &&
      other.type == type &&
      other.description == description &&
      other.address == address &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.menuId == menuId;

    @override
    int get hashCode =>
        name.hashCode +
        type.hashCode +
        (description == null ? 0 : description.hashCode) +
        address.hashCode +
        (latitude == null ? 0 : latitude.hashCode) +
        (longitude == null ? 0 : longitude.hashCode) +
        (menuId == null ? 0 : menuId.hashCode);

  factory UpdateEstablishmentScheme.fromJson(Map<String, dynamic> json) => _$UpdateEstablishmentSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateEstablishmentSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

