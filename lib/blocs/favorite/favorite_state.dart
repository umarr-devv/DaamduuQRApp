part of 'favorite_cubit.dart';

@JsonSerializable()
class FavoriteState extends Equatable {
  const FavoriteState({this.favoriteIds = const []});

  final List<String> favoriteIds;

  bool isFavorite(String id) {
    return favoriteIds.contains(id);
  }

  FavoriteState copyWith({List<String>? favoriteIds}) {
    return FavoriteState(favoriteIds: favoriteIds ?? this.favoriteIds);
  }

  FavoriteState.from(FavoriteState other) : favoriteIds = other.favoriteIds;

  @override
  List<Object> get props => [favoriteIds];

  factory FavoriteState.fromJson(Map<String, dynamic> json) =>
      _$FavoriteStateFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteStateToJson(this);
}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteUpdate extends FavoriteState {
  FavoriteUpdate(super.state) : super.from();
}
