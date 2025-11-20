part of 'search_cubit.dart';

@JsonSerializable()
class SearchState extends Equatable {
  const SearchState({this.result, this.establishment, this.query});

  final SearchResultScheme? result;
  final EstablishmentScheme? establishment;
  final String? query;

  SearchState copyWith({
    SearchResultScheme? result,
    EstablishmentScheme? establishment,
    final String? query,
  }) {
    return SearchState(
      result: result ?? this.result,
      establishment: establishment ?? this.establishment,
      query: query ?? this.query,
    );
  }

  SearchState.from(SearchState other)
    : result = other.result,
      establishment = other.establishment,
      query = other.query;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);

  Map<String, dynamic> toJson() => _$SearchStateToJson(this);

  @override
  List<Object?> get props => [result, establishment, query];
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
