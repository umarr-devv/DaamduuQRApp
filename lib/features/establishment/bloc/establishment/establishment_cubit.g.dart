// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstablishmentState _$EstablishmentStateFromJson(Map<String, dynamic> json) =>
    EstablishmentState(
      establishment: EstablishmentScheme.fromJson(
        json['establishment'] as Map<String, dynamic>,
      ),
      stories:
          (json['stories'] as List<dynamic>?)
              ?.map((e) => StoryScheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryScheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      places:
          (json['places'] as List<dynamic>?)
              ?.map((e) => PlaceScheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EstablishmentStateToJson(EstablishmentState instance) =>
    <String, dynamic>{
      'establishment': instance.establishment,
      'stories': instance.stories,
      'categories': instance.categories,
      'places': instance.places,
    };
