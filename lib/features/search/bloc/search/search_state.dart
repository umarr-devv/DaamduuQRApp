part of 'search_cubit.dart';

@JsonSerializable()
class SearchState extends Equatable {
  const SearchState({this.result, this.query});

  final SearchResultScheme? result;
  final String? query;

  SearchState copyWith({SearchResultScheme? result, final String? query}) {
    return SearchState(
      result: result ?? this.result,
      query: query ?? this.query,
    );
  }

  SearchState.from(SearchState other)
    : result = other.result,
      query = other.query;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);

  Map<String, dynamic> toJson() => _$SearchStateToJson(this);

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {
  SearchLoading(super.state) : super.from();
}

final class SearchLoaded extends SearchState {
  SearchLoaded(super.state) : super.from();
}

final class SearchFailure extends SearchState {}
