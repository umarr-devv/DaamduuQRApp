import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_cubit.g.dart';
part 'order_item.dart';
part 'order_state.dart';

class OrderCubit extends HydratedCubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  @override
  Map<String, dynamic>? toJson(OrderState state) => state.toJson();

  @override
  OrderState? fromJson(Map<String, dynamic> json) => OrderState.fromJson(json);
}
