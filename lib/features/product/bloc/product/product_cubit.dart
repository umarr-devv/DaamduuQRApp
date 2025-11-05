import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_cubit.g.dart';
part 'product_state.dart';

class ProductCubit extends HydratedCubit<ProductState> {
  ProductCubit(ProductScheme product) : super(ProductInitial(product: product));


  @override
  String get id => state.product.id;

  @override
  Map<String, dynamic>? toJson(ProductState state) {
    return state.toJson();
  }

  @override
  ProductState? fromJson(Map<String, dynamic> json) {
    return ProductState.fromJson(json);
  }
}
