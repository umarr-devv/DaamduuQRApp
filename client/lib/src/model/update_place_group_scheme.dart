//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_place_group_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePlaceGroupScheme {
  /// Returns a new [UpdatePlaceGroupScheme] instance.
  UpdatePlaceGroupScheme({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdatePlaceGroupScheme &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory UpdatePlaceGroupScheme.fromJson(Map<String, dynamic> json) => _$UpdatePlaceGroupSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePlaceGroupSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

