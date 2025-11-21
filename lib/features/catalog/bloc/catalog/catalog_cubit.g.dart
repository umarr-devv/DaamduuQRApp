// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogState _$CatalogStateFromJson(Map<String, dynamic> json) => CatalogState(
  establishment: EstablishmentScheme.fromJson(
    json['establishment'] as Map<String, dynamic>,
  ),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductScheme.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  currentCategory: json['current_category'] == null
      ? null
      : CategoryScheme.fromJson(
          json['current_category'] as Map<String, dynamic>,
        ),
  updateTime: DateTime.parse(json['update_time'] as String),
);

Map<String, dynamic> _$CatalogStateToJson(CatalogState instance) =>
    <String, dynamic>{
      'establishment': instance.establishment,
      'categories': instance.categories,
      'products': instance.products,
      'current_category': instance.currentCategory,
      'update_time': instance.updateTime.toIso8601String(),
    };
