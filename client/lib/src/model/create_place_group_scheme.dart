//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_place_group_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePlaceGroupScheme {
  /// Returns a new [CreatePlaceGroupScheme] instance.
  CreatePlaceGroupScheme({

    required  this.name,

    required  this.establishmentId,
  });

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
    bool operator ==(Object other) => identical(this, other) || other is CreatePlaceGroupScheme &&
      other.name == name &&
      other.establishmentId == establishmentId;

    @override
    int get hashCode =>
        name.hashCode +
        establishmentId.hashCode;

  factory CreatePlaceGroupScheme.fromJson(Map<String, dynamic> json) => _$CreatePlaceGroupSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaceGroupSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

