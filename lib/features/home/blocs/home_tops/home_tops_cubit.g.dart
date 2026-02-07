// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_tops_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTopsState _$HomeTopsStateFromJson(Map<String, dynamic> json) =>
    HomeTopsState(
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

Map<String, dynamic> _$HomeTopsStateToJson(HomeTopsState instance) =>
    <String, dynamic>{
      'establishments': instance.establishments,
      'products': instance.products,
    };
