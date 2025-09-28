import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  final client = GetIt.I<DaamduuqrClient>().getRecommendationsApi();
  final talker = GetIt.I<Talker>();

  HomeCubit() : super(HomeInitial());

  Future init() async {
    emit(HomeInitial());
    try {
      final newState = await getData();
      emit(HomeLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(HomeFailure());
    }
  }

  Future update() async {
    emit(HomeLoading(state));
    try {
      final newState = await getData();
      emit(HomeLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(HomeFailure());
    }
  }

  Future<HomeState> getData() async {
    final establishmentsResponse = await client
        .getRecommendationsEstablishments(latitude: null, longitude: null);
    final productsResponse = await client.getRecommendationsProducts();

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
