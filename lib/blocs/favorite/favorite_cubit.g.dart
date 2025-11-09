// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteState _$FavoriteStateFromJson(Map<String, dynamic> json) =>
    FavoriteState(
      favoriteIds:
          (json['favorite_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FavoriteStateToJson(FavoriteState instance) =>
    <String, dynamic>{'favorite_ids': instance.favoriteIds};
