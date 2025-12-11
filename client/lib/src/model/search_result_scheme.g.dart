// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultScheme _$SearchResultSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SearchResultScheme', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['query']);
      final val = SearchResultScheme(
        query: $checkedConvert('query', (v) => v as String),
        establishments: $checkedConvert(
          'establishments',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        EstablishmentScheme.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              [],
        ),
        products: $checkedConvert(
          'products',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => ProductScheme.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$SearchResultSchemeToJson(
  SearchResultScheme instance,
) => <String, dynamic>{
  'query': instance.query,
  'establishments': ?instance.establishments?.map((e) => e.toJson()).toList(),
  'products': ?instance.products?.map((e) => e.toJson()).toList(),
};
