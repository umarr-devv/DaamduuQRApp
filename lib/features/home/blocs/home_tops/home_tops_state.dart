part of 'home_tops_cubit.dart';

@JsonSerializable()
class HomeTopsState extends Equatable {
  const HomeTopsState({this.establishments = const [], this.products = const []});

  final List<EstablishmentScheme> establishments;
  final List<ProductScheme> products;

  HomeTopsState copyWith({
    List<EstablishmentScheme>? establishments,
    List<ProductScheme>? products,
  }) {
    return HomeTopsState(
      establishments: establishments ?? this.establishments,
      products: products ?? this.products,
    );
  }

  HomeTopsState.from(HomeTopsState other)
    : establishments = other.establishments,
      products = other.products;

  factory HomeTopsState.fromJson(Map<String, dynamic> json) =>
      _$HomeTopsStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomeTopsStateToJson(this);

  @override
  List<Object?> get props => [establishments, products];
}

final class HomeTopsInitial extends HomeTopsState {}

final class HomeTopsLoading extends HomeTopsState {
  HomeTopsLoading(super.state) : super.from();
}

final class HomeTopsLoaded extends HomeTopsState {
  HomeTopsLoaded(super.state) : super.from();
}

final class HomeTopsFailure extends HomeTopsState {
  HomeTopsFailure(super.state) : super.from();
}
