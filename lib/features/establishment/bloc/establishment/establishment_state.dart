part of 'establishment_cubit.dart';

@JsonSerializable()
class EstablishmentState extends Equatable {
  const EstablishmentState({
    required this.establishment,
    this.detail,
    required this.updateTime,
  });
  final EstablishmentScheme establishment;
  final DetailEstablishmentScheme? detail;
  final DateTime updateTime;

  EstablishmentState copyWith({
    DetailEstablishmentScheme? detail,
    List<StoryScheme>? stories,
    List<PlaceScheme>? places,
    DateTime? updateTime,
  }) {
    return EstablishmentState(
      detail: detail ?? this.detail,
      establishment: establishment,
      updateTime: DateTime.now(),
    );
  }

  EstablishmentState.from(EstablishmentState other)
    : establishment = other.establishment,
      detail = other.detail,
      updateTime = other.updateTime;

  factory EstablishmentState.fromJson(Map<String, dynamic> json) =>
      _$EstablishmentStateFromJson(json);

  Map<String, dynamic> toJson() => _$EstablishmentStateToJson(this);

  @override
  List<Object?> get props => [establishment, updateTime];
}

final class EstablishmentInitial extends EstablishmentState {
  const EstablishmentInitial({
    required super.establishment,
    required super.updateTime,
  });
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
