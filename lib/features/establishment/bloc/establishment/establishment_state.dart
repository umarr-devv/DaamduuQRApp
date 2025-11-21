part of 'establishment_cubit.dart';

@JsonSerializable()
class EstablishmentState extends Equatable {
  const EstablishmentState({
    required this.establishment,
    this.stories = const [],
    this.places = const [],
    required this.updateTime
  });
  final EstablishmentScheme establishment;
  final List<StoryScheme> stories;
  final List<PlaceScheme> places;
  final DateTime updateTime;

  EstablishmentState copyWith({
     List<StoryScheme>? stories,
     List<CategoryScheme>? categories,
     List<PlaceScheme>? places,
    DateTime? updateTime
  }) {
    return EstablishmentState(
      establishment: establishment,
      stories: stories ?? this.stories,
      places: places ?? this.places,
      updateTime: DateTime.now(),
    );
  }

  EstablishmentState.from(EstablishmentState other)
    : establishment = other.establishment,
      stories = other.stories,
      places = other.places,
      updateTime = other.updateTime;

  factory EstablishmentState.fromJson(Map<String, dynamic> json) =>
      _$EstablishmentStateFromJson(json);

  Map<String, dynamic> toJson() => _$EstablishmentStateToJson(this);

  @override
  List<Object?> get props => [establishment, stories, places, updateTime];
}

final class EstablishmentInitial extends EstablishmentState {
  const EstablishmentInitial({required super.establishment, required super.updateTime});
}

final class EstablishmentLoading extends EstablishmentState {
  EstablishmentLoading(super.state) : super.from();
}

final class EstablishmentLoaded extends EstablishmentState {
  EstablishmentLoaded(super.state) : super.from();
}

final class EstablishmentFailure extends EstablishmentState {
  EstablishmentFailure(super.state) : super.from();
}
