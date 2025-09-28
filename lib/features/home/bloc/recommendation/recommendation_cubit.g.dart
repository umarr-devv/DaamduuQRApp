// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationState _$RecommendationStateFromJson(Map<String, dynamic> json) =>
    RecommendationState(
      establishments:
          (json['establishments'] as List<dynamic>?)
              ?.map(
                (e) => EstablishmentScheme.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => ProductScheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RecommendationStateToJson(
  RecommendationState instance,
) => <String, dynamic>{
  'establishments': instance.establishments,
  'products': instance.products,
};
