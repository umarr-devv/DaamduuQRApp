part of 'order_cubit.dart';

@JsonSerializable()
class OrderState extends Equatable {
  const OrderState({this.items = const [], this.establishment, this.place});

  final List<OrderItem> items;
  final EstablishmentScheme? establishment;
  final PlaceScheme? place;

  num get totalSum => items.map((i) => i.sum).toList().reduce((a, b) => a + b);

  OrderItem? getOrderItem(String productId) {
    return items.firstWhereLogTypeOrNull((i) => i.product.id == productId);
  }

  OrderState copyWith({
    List<OrderItem>? items,
    EstablishmentScheme? establishment,
    PlaceScheme? place,
  }) {
    return OrderState(
      items: items ?? this.items,
      establishment: establishment ?? this.establishment,
      place: place ?? this.place,
    );
  }

  OrderState.from(OrderState other)
    : items = other.items,
      establishment = other.establishment,
      place = other.place;

  factory OrderState.fromJson(Map<String, dynamic> json) =>
      _$OrderStateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStateToJson(this);

  @override
  List<Object?> get props => [items, establishment, place];
}

final class OrderInitial extends OrderState {}

final class OrderUpdate extends OrderState {
  OrderUpdate(super.state) : super.from();
}
