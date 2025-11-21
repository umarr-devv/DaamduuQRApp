// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductState _$ProductStateFromJson(Map<String, dynamic> json) => ProductState(
  product: ProductScheme.fromJson(json['product'] as Map<String, dynamic>),
  detailProduct: json['detail_product'] == null
      ? null
      : DetailProductScheme.fromJson(
          json['detail_product'] as Map<String, dynamic>,
        ),
  updateTime: DateTime.parse(json['update_time'] as String),
);

Map<String, dynamic> _$ProductStateToJson(ProductState instance) =>
    <String, dynamic>{
      'product': instance.product,
      'detail_product': instance.detailProduct,
      'update_time': instance.updateTime.toIso8601String(),
    };
