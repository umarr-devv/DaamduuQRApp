import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'search_cubit.g.dart';
part 'search_state.dart';

class SearchCubit extends HydratedCubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future search(String query) async {
    emit(SearchLoading(state));
    try {
      final result = await client.getSearchApi().search(query: query);
      final newState = state.copyWith(query: query, result: result.data);
      emit(SearchLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(SearchFailure());
    }
  }

  @override
  Map<String, dynamic>? toJson(SearchState state) {
    return state.toJson();
  }

  @override
  SearchState? fromJson(Map<String, dynamic> json) {
    return SearchState.fromJson(json);
  }
}
