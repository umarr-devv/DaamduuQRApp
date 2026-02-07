import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'home_tops_cubit.g.dart';
part 'home_tops_state.dart';

class HomeTopsCubit extends HydratedCubit<HomeTopsState> {
  HomeTopsCubit() : super(HomeTopsInitial());

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future update({EstablishmentType? type}) async {
    emit(HomeTopsLoading(state));
    try {
      final establishmentsResponse = await client
          .getRecommendationsApi()
          .getRecommendationsEstablishments(
            latitude: null,
            longitude: null,
            establishmentType: type,
          );
      final productsResponse = await client
          .getRecommendationsApi()
          .getRecommendationsProducts();
      final newState = state.copyWith(
        establishments: establishmentsResponse.data,
        products: productsResponse.data,
      );
      emit(HomeTopsLoaded(newState));
    } catch (exc, st) {
      talker.error(exc, st);
      emit(HomeTopsFailure(state));
    }
  }

  @override
  Map<String, dynamic>? toJson(HomeTopsState state) => state.toJson();

  @override
  HomeTopsState? fromJson(Map<String, dynamic> json) =>
      HomeTopsState.fromJson(json);
}
