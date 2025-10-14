import 'package:app/utils/undefined.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  HomeCubit() : super(HomeInitial());

  Future update({bool refresh = false}) async {
    if (refresh) {
      emit(HomeRefreshing(state));
    } else {
      emit(HomeLoading(state));
    }
    try {
      final newState = await _getData();
      emit(HomeLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(HomeFailure());
    }
  }

  Future setType(Object? type) async {
    final newState = state.copyWith(type: type);
    emit(HomeUpdate(newState));
    await update();
  }

  Future<HomeState> _getData() async {
    final establishmentsResponse = await client
        .getRecommendationsApi()
        .getRecommendationsEstablishments(
          latitude: null,
          longitude: null,
          establishmentType: state.type,
        );
    final productsResponse = await client
        .getRecommendationsApi()
        .getRecommendationsProducts();
    return state.copyWith(
      establishments: establishmentsResponse.data,
      products: productsResponse.data,
    );
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) => state.toJson();

  @override
  HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);
}
