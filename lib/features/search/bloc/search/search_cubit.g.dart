// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchState _$SearchStateFromJson(Map<String, dynamic> json) => SearchState(
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  establishments:
      (json['establishments'] as List<dynamic>?)
          ?.map((e) => EstablishmentScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  establishment: json['establishment'] == null
      ? null
      : EstablishmentScheme.fromJson(
          json['establishment'] as Map<String, dynamic>,
        ),
  query: json['query'] as String? ?? '',
);

Map<String, dynamic> _$SearchStateToJson(SearchState instance) =>
    <String, dynamic>{
      'products': instance.products,
      'establishments': instance.establishments,
      'establishment': instance.establishment,
      'query': instance.query,
    };
