import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'product_cubit.g.dart';
part 'product_state.dart';

class ProductCubit extends HydratedCubit<ProductState> {
  ProductCubit(ProductScheme product) : super(ProductInitial(product: product));

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future update() async {
    if (state.updateTime == null ||
        DateTime.now().difference(state.updateTime!) > Duration(minutes: 5)) {
      await forceUpdate();
    }
  }

  Future forceUpdate() async {
    emit(ProductUpdating(state));
    try {
      final detailProduct = await client.getProductsApi().getProduct(
        productId: state.product.id,
      );
      final newState = state.copyWith(detailProduct.data);
      emit(ProductUpdated(newState));
    } catch (exc) {
      talker.error(exc);
      emit(ProductFailure(state));
    }
  }

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
