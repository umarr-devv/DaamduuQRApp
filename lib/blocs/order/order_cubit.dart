import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker/talker.dart';

part 'order_cubit.g.dart';
part 'order_item.dart';
part 'order_state.dart';

class OrderCubit extends HydratedCubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  void addItem(ProductScheme product) async {
    final List<OrderItem> items = List.from(state.items);
    items.add(OrderItem(product: product, portion: null, quantity: 1));

    final newState = state.copyWith(items: items);
    emit(OrderUpdate(newState));
  }

  void setItem(OrderItem? item) async {
    if (item == null) return;

    final List<OrderItem> items = List.from(state.items);
    final oldItem = items.firstWhereLogTypeOrNull(
      (i) => i.product.id == item.product.id,
    );
    if (oldItem == null) {
      return;
    }
    final int index = items.indexOf(oldItem);
    if (index == -1) {
      return;
    }
    if (item.quantity == 0) {
      items.removeAt(index);
    } else {
      items[index] = item;
    }

    final newState = state.copyWith(items: items);
    emit(OrderUpdate(newState));
  }

  void clearItems() {
    final newState = state.copyWith(items: []);
    emit(OrderUpdate(newState));
  }

  @override
  Map<String, dynamic>? toJson(OrderState state) => state.toJson();

  @override
  OrderState? fromJson(Map<String, dynamic> json) => OrderState.fromJson(json);
}
