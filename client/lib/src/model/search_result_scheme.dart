//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/product_scheme.dart';
import 'package:daamduuqr_client/src/model/establishment_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result_scheme.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SearchResultScheme {
  /// Returns a new [SearchResultScheme] instance.
  SearchResultScheme({
    required this.query,

    this.establishments = const [],

    this.products = const [],
  });

  @JsonKey(name: r'query', required: true, includeIfNull: false)
  final String query;

  @JsonKey(
    defaultValue: [],
    name: r'establishments',
    required: false,
    includeIfNull: false,
  )
  final List<EstablishmentScheme>? establishments;

  @JsonKey(
    defaultValue: [],
    name: r'products',
    required: false,
    includeIfNull: false,
  )
  final List<ProductScheme>? products;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchResultScheme &&
          other.query == query &&
          other.establishments == establishments &&
          other.products == products;

  @override
  int get hashCode =>
      query.hashCode + establishments.hashCode + products.hashCode;

  factory SearchResultScheme.fromJson(Map<String, dynamic> json) =>
      _$SearchResultSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
