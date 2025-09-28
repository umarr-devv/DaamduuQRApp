import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'recommendation_cubit.g.dart';
part 'recommendation_state.dart';

class RecommendationCubit extends HydratedCubit<RecommendationState> {
  final client = GetIt.I<DaamduuqrClient>().getRecommendationsApi();
  final talker = GetIt.I<Talker>();

  RecommendationCubit() : super(RecommendationInitial());

  Future update() async {
    emit(RecommendationLoading(state));
    try {
      final establishmentsResponse = await client
          .getRecommendationsEstablishments(latitude: null, longitude: null);
      final productsResponse = await client.getRecommendationsProducts();

      final newState = state.copyWith(
        establishments: establishmentsResponse.data,
        products: productsResponse.data,
      );
      emit(RecommendationLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(RecommendationFailure());
    }
  }

  @override
  Map<String, dynamic>? toJson(RecommendationState state) => state.toJson();

  @override
  RecommendationState? fromJson(Map<String, dynamic> json) =>
      RecommendationState.fromJson(json);
}
