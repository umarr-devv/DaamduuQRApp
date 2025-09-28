import 'package:bloc/bloc.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'recommendation_state.dart';

class RecommendationCubit extends Cubit<RecommendationState> {
  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  RecommendationCubit() : super(RecommendationInitial());

  Future update() async {
    emit(RecommendationLoading(state));
    try {
      // FOR DEBUG
      await Future.delayed(const Duration(seconds: 3));
      final establishmentsResponse = await client
          .getRecommendationsApi()
          .getRecommendationsEstablishments(
            latitude: null, longitude: null,
          );
      final productsResponse = await client
          .getRecommendationsApi()
          .getRecommendationsProducts();

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
}
