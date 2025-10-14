part of 'establishment_cubit.dart';

@JsonSerializable()
class EstablishmentState extends Equatable {
  const EstablishmentState({
    required this.establishment,
    this.stories = const [],
    this.categories = const [],
    this.places = const [],
  });
  final EstablishmentScheme establishment;
  final List<StoryScheme> stories;
  final List<CategoryScheme> categories;
  final List<PlaceScheme> places;

  EstablishmentState copyWith({
    final List<StoryScheme>? stories,
    final List<CategoryScheme>? categories,
    final List<PlaceScheme>? places,
  }) {
    return EstablishmentState(
      establishment: establishment,
      stories: stories ?? this.stories,
      categories: categories ?? this.categories,
      places: places ?? this.places,
    );
  }

  EstablishmentState.from(EstablishmentState other)
    : establishment = other.establishment,
      stories = other.stories,
      categories = other.categories,
      places = other.places;

  factory EstablishmentState.fromJson(Map<String, dynamic> json) =>
      _$EstablishmentStateFromJson(json);

  Map<String, dynamic> toJson() => _$EstablishmentStateToJson(this);

  @override
  List<Object?> get props => [establishment, stories, categories, places];
}

final class EstablishmentInitial extends EstablishmentState {
  const EstablishmentInitial({required super.establishment});
  EstablishmentInitial.from(super.state) : super.from();
}

final class EstablishmentLoading extends EstablishmentState {
  EstablishmentLoading(super.state) : super.from();
}

final class EstablishmentLoaded extends EstablishmentState {
  EstablishmentLoaded(super.state) : super.from();
}

final class EstablishmentRefreshing extends EstablishmentState {
  EstablishmentRefreshing(super.state) : super.from();
}

final class EstablishmentFailure extends EstablishmentState {
  EstablishmentFailure(super.state) : super.from();
}
