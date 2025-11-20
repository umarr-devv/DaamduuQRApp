// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchState _$SearchStateFromJson(Map<String, dynamic> json) => SearchState(
  result: json['result'] == null
      ? null
      : SearchResultScheme.fromJson(json['result'] as Map<String, dynamic>),
  establishment: json['establishment'] == null
      ? null
      : EstablishmentScheme.fromJson(
          json['establishment'] as Map<String, dynamic>,
        ),
  query: json['query'] as String?,
);

Map<String, dynamic> _$SearchStateToJson(SearchState instance) =>
    <String, dynamic>{
      'result': instance.result,
      'establishment': instance.establishment,
      'query': instance.query,
    };
