import 'package:app/data/repositories/general_storage.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorite_cubit.g.dart';
part 'favorite_state.dart';

class FavoriteCubit extends HydratedCubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  final GeneralStorage storage = GetIt.I<GeneralStorage>();
  List<String> get favoriteIds =>
      storage
          .read<List<dynamic>?>(GeneralStorageKey.favorites)
          ?.cast<String>() ??
      [];

  void update() {
    final newState = state.copyWith(favoriteIds: favoriteIds);
    emit(FavoriteUpdate(newState));
  }

  Future add(String id) async {
    if (favoriteIds.contains(id)) {
      return;
    }
    final newFavoriteIds = List.from(favoriteIds);
    newFavoriteIds.add(id);
    await storage.write(GeneralStorageKey.favorites, newFavoriteIds);
    update();
  }

  Future remove(String id) async {
    if (!favoriteIds.contains(id)) {
      return;
    }
    final newFavoriteIds = List.from(favoriteIds);
    newFavoriteIds.remove(id);
    await storage.write(GeneralStorageKey.favorites, newFavoriteIds);
    update();
  }

  @override
  Map<String, dynamic>? toJson(FavoriteState state) => state.toJson();

  @override
  FavoriteState? fromJson(Map<String, dynamic> json) =>
      FavoriteState.fromJson(json);
}
