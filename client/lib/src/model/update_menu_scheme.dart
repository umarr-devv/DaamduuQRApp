//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_menu_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateMenuScheme {
  /// Returns a new [UpdateMenuScheme] instance.
  UpdateMenuScheme({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateMenuScheme &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory UpdateMenuScheme.fromJson(Map<String, dynamic> json) => _$UpdateMenuSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMenuSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

