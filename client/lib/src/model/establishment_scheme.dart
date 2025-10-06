//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/file_scheme.dart';
import 'package:daamduuqr_client/src/model/contact_scheme.dart';
import 'package:daamduuqr_client/src/model/establishment_type.dart';
import 'package:daamduuqr_client/src/model/menu_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'establishment_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EstablishmentScheme {
  /// Returns a new [EstablishmentScheme] instance.
  EstablishmentScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.organizationId,

    required  this.type,

    required  this.description,

    required  this.address,

    required  this.latitude,

    required  this.longitude,

    required  this.menuId,

    required  this.menu,

    required  this.images,

    required  this.contacts,
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



  @JsonKey(
    
    name: r'menu',
    required: true,
    includeIfNull: true,
  )


  final MenuScheme? menu;



  @JsonKey(
    
    name: r'images',
    required: true,
    includeIfNull: false,
  )


  final List<FileScheme> images;



  @JsonKey(
    
    name: r'contacts',
    required: true,
    includeIfNull: false,
  )


  final List<ContactScheme> contacts;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EstablishmentScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.organizationId == organizationId &&
      other.type == type &&
      other.description == description &&
      other.address == address &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.menuId == menuId &&
      other.menu == menu &&
      other.images == images &&
      other.contacts == contacts;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        organizationId.hashCode +
        type.hashCode +
        (description == null ? 0 : description.hashCode) +
        address.hashCode +
        (latitude == null ? 0 : latitude.hashCode) +
        (longitude == null ? 0 : longitude.hashCode) +
        (menuId == null ? 0 : menuId.hashCode) +
        (menu == null ? 0 : menu.hashCode) +
        images.hashCode +
        contacts.hashCode;

  factory EstablishmentScheme.fromJson(Map<String, dynamic> json) => _$EstablishmentSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$EstablishmentSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

