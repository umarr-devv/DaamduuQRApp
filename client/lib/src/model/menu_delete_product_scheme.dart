//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'menu_delete_product_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MenuDeleteProductScheme {
  /// Returns a new [MenuDeleteProductScheme] instance.
  MenuDeleteProductScheme({

    required  this.productIds,
  });

  @JsonKey(
    
    name: r'product_ids',
    required: true,
    includeIfNull: false,
  )


  final List<String> productIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MenuDeleteProductScheme &&
      other.productIds == productIds;

    @override
    int get hashCode =>
        productIds.hashCode;

  factory MenuDeleteProductScheme.fromJson(Map<String, dynamic> json) => _$MenuDeleteProductSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$MenuDeleteProductSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

