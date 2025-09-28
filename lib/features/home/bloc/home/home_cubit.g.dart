// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeState _$HomeStateFromJson(Map<String, dynamic> json) => HomeState(
  establishments:
      (json['establishments'] as List<dynamic>?)
          ?.map((e) => EstablishmentScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$HomeStateToJson(HomeState instance) => <String, dynamic>{
  'establishments': instance.establishments,
  'products': instance.products,
};
