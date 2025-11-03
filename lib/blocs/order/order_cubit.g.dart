// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
  product: ProductScheme.fromJson(json['product'] as Map<String, dynamic>),
  portion: json['portion'] == null
      ? null
      : PortionScheme.fromJson(json['portion'] as Map<String, dynamic>),
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
  'product': instance.product,
  'portion': instance.portion,
  'quantity': instance.quantity,
};

OrderState _$OrderStateFromJson(Map<String, dynamic> json) => OrderState(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  establishment: json['establishment'] == null
      ? null
      : EstablishmentScheme.fromJson(
          json['establishment'] as Map<String, dynamic>,
        ),
  place: json['place'] == null
      ? null
      : PlaceScheme.fromJson(json['place'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderStateToJson(OrderState instance) =>
    <String, dynamic>{
      'items': instance.items,
      'establishment': instance.establishment,
      'place': instance.place,
    };
