part of 'order_cubit.dart';

@JsonSerializable()
class OrderState extends Equatable {
  const OrderState({this.items = const [], this.establishment, this.place});

  final List<OrderItem> items;
  final EstablishmentScheme? establishment;
  final PlaceScheme? place;

  num get totalSum => items.map((i) => i.sum).toList().reduce((a, b) => a + b);

  factory OrderState.fromJson(Map<String, dynamic> json) =>
      _$OrderStateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStateToJson(this);

  @override
  List<Object?> get props => [items, establishment, place];
}

final class OrderInitial extends OrderState {}
