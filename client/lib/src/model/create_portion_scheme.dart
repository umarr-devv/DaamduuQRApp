//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_portion_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePortionScheme {
  /// Returns a new [CreatePortionScheme] instance.
  CreatePortionScheme({

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
    bool operator ==(Object other) => identical(this, other) || other is CreatePortionScheme &&
      other.name == name &&
      other.price == price;

    @override
    int get hashCode =>
        name.hashCode +
        price.hashCode;

  factory CreatePortionScheme.fromJson(Map<String, dynamic> json) => _$CreatePortionSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePortionSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

