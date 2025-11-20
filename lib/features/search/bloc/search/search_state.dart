part of 'search_cubit.dart';

@JsonSerializable()
class SearchState extends Equatable {
  const SearchState({
    this.products = const [],
    this.establishments = const [],
    this.establishment,
    this.query,
  });

  final List<ProductScheme> products;
  final List<EstablishmentScheme> establishments;
  final EstablishmentScheme? establishment;
  final String? query;

  SearchState copyWith({
    List<ProductScheme>? products,
    List<EstablishmentScheme>? establishments,
    EstablishmentScheme? establishment,
    final String? query,
  }) {
    return SearchState(
      products: products ?? this.products,
      establishments: establishments ?? this.establishments,
      establishment: establishment ?? this.establishment,
      query: query ?? this.query,
    );
  }

  SearchState.from(SearchState other)
    : products = other.products,
      establishments = other.establishments,
      establishment = other.establishment,
      query = other.query;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);

  Map<String, dynamic> toJson() => _$SearchStateToJson(this);

  @override
  List<Object?> get props => [products, establishments, establishment, query];
}

final class SearchInitial extends SearchState {
  const SearchInitial({super.establishment});
}

final class SearchLoading extends SearchState {
  SearchLoading(super.state) : super.from();
}

final class SearchLoaded extends SearchState {
  SearchLoaded(super.state) : super.from();
}

final class SearchFailure extends SearchState {}
