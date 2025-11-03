part of 'order_cubit.dart';

@JsonSerializable()
class OrderItem {
  const OrderItem({
    required this.product,
    required this.portion,
    required this.quantity,
  });
  final ProductScheme product;
  final PortionScheme? portion;
  final int quantity;

  num get sum {
    if (portion != null) {
      return portion!.price * quantity;
    }
    return product.price * quantity;
  }

  OrderItem copyWith(int quantity) {
    return OrderItem(product: product, portion: portion, quantity: quantity);
  }

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
