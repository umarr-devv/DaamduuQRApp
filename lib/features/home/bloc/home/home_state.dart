part of 'home_cubit.dart';

@JsonSerializable()
class HomeState extends Equatable {
  const HomeState({
    this.establishments = const [],
    this.products = const [],
    this.type,
  });

  final EstablishmentType? type;
  final List<EstablishmentScheme> establishments;
  final List<ProductScheme> products;

  HomeState copyWith({
    Object? type,
    List<EstablishmentScheme>? establishments,
    List<ProductScheme>? products,
  }) {
    return HomeState(
      type: undefCompare(type, this.type),
      establishments: establishments ?? this.establishments,
      products: products ?? this.products,
    );
  }

  HomeState.from(HomeState other)
    : type = other.type,
      establishments = other.establishments,
      products = other.products;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStateToJson(this);

  @override
  List<Object?> get props => [type, establishments, products];
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {
  HomeLoading(super.state) : super.from();
}

final class HomeLoaded extends HomeState {
  HomeLoaded(super.state) : super.from();
}

final class HomeRefreshing extends HomeState {
  HomeRefreshing(super.state) : super.from();
}

final class HomeUpdate extends HomeState {
  HomeUpdate(super.state) : super.from();
}

final class HomeFailure extends HomeState {}
