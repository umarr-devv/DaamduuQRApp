//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'menu_add_product_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MenuAddProductScheme {
  /// Returns a new [MenuAddProductScheme] instance.
  MenuAddProductScheme({

    required  this.productIds,
  });

  @JsonKey(
    
    name: r'product_ids',
    required: true,
    includeIfNull: false,
  )


  final List<String> productIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MenuAddProductScheme &&
      other.productIds == productIds;

    @override
    int get hashCode =>
        productIds.hashCode;

  factory MenuAddProductScheme.fromJson(Map<String, dynamic> json) => _$MenuAddProductSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$MenuAddProductSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

