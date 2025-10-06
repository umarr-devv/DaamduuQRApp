//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_portion_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePortionScheme {
  /// Returns a new [UpdatePortionScheme] instance.
  UpdatePortionScheme({

    required  this.name,

    required  this.price,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'price',
    required: true,
    includeIfNull: false,
  )


  final num price;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdatePortionScheme &&
      other.name == name &&
      other.price == price;

    @override
    int get hashCode =>
        name.hashCode +
        price.hashCode;

  factory UpdatePortionScheme.fromJson(Map<String, dynamic> json) => _$UpdatePortionSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePortionSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

