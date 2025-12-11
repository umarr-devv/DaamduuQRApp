//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'place_group_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceGroupScheme {
  /// Returns a new [PlaceGroupScheme] instance.
  PlaceGroupScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.establishmentId,
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
    
    name: r'establishment_id',
    required: true,
    includeIfNull: false,
  )


  final String establishmentId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaceGroupScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.establishmentId == establishmentId;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        establishmentId.hashCode;

  factory PlaceGroupScheme.fromJson(Map<String, dynamic> json) => _$PlaceGroupSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceGroupSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

