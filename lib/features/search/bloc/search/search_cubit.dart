import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'search_cubit.g.dart';
part 'search_state.dart';

class SearchCubit extends HydratedCubit<SearchState> {
  SearchCubit({EstablishmentScheme? establishment})
    : super(SearchInitial(establishment: establishment));

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future search(String query) async {
    if (state.query == query) return;
    emit(SearchLoading(state));
    try {
      late Response<SearchResultScheme> result;
      if (state.establishment != null) {
        result = await client.getSearchApi().searchByEstablishment(
          establishmentId: state.establishment!.id,
          query: query,
        );
      } else {
        result = await client.getSearchApi().search(query: query);
      }
      final newState = state.copyWith(
        query: query,
        products: result.data?.products,
        establishments: result.data?.establishments,
      );
      // FOR DEBUG
      await Future.delayed(const Duration(seconds: 1));
      emit(SearchLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(SearchFailure());
    }
  }

  @override
  String get id => state.establishment?.id ?? 'search';

  @override
  Map<String, dynamic>? toJson(SearchState state) {
    return state.toJson();
  }

  @override
  SearchState? fromJson(Map<String, dynamic> json) {
    return SearchState.fromJson(json);
  }
}
