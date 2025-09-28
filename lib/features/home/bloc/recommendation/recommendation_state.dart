part of 'recommendation_cubit.dart';

class RecommendationState extends Equatable {
  const RecommendationState({
    this.establishments = const [],
    this.products = const [],
  });

  final List<EstablishmentScheme> establishments;
  final List<ProductScheme> products;

  RecommendationState copyWith({
    List<EstablishmentScheme>? establishments,
    List<ProductScheme>? products,
  }) {
    return RecommendationState(
      establishments: establishments ?? this.establishments,
      products: products ?? this.products,
    );
  }

  RecommendationState.from(RecommendationState other)
    : establishments = other.establishments,
      products = other.products;

  @override
  List<Object> get props => [establishments, products];
}

final class RecommendationInitial extends RecommendationState {}

final class RecommendationLoading extends RecommendationState {
  RecommendationLoading(super.state) : super.from();
}

final class RecommendationLoaded extends RecommendationState {
  RecommendationLoaded(super.state) : super.from();
}

final class RecommendationFailure extends RecommendationState {}
