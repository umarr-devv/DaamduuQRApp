import 'package:app/utils/undefined.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'catalog_cubit.g.dart';
part 'catalog_state.dart';

class CatalogCubit extends HydratedCubit<CatalogState> {
  CatalogCubit({required EstablishmentScheme establishment})
    : super(CatalogInitial(establishment: establishment));

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future init() async {
    emit(CatalogLoading(state));
    try {
      final newState = await _getData();
      emit(CatalogLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(CatalogFailure(state));
    }
  }

  Future<CatalogState> _getData() async {
    final categories = await client
        .getCategoriesApi()
        .getCategoriesByEstablishment(establishmentId: state.establishment.id);
    final products = await client
        .getEstablishmentsApi()
        .getEstablishmentProducts(establishmentId: state.establishment.id);
    return state.copyWith(categories: categories.data, products: products.data);
  }

  @override
  String get id => state.establishment.id;

  @override
  Map<String, dynamic>? toJson(CatalogState state) {
    return state.toJson();
  }

  @override
  CatalogState? fromJson(Map<String, dynamic> json) {
    return CatalogState.fromJson(json);
  }
}
