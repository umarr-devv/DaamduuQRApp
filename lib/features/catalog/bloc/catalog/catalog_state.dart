part of 'catalog_cubit.dart';

@JsonSerializable()
class CatalogState extends Equatable {
  const CatalogState({required this.establishment, this.categories = const []});

  final EstablishmentScheme establishment;
  final List<CategoryScheme> categories;

  CatalogState copyWith({List<CategoryScheme>? categories}) {
    return CatalogState(
      establishment: establishment,
      categories: categories ?? this.categories,
    );
  }

  CatalogState.from(CatalogState other)
    : establishment = other.establishment,
      categories = other.categories;

  factory CatalogState.fromJson(Map<String, dynamic> json) =>
      _$CatalogStateFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogStateToJson(this);

  @override
  List<Object?> get props => [establishment, categories];
}

final class CatalogInitial extends CatalogState {
  const CatalogInitial({required super.establishment});
}

final class CatalogLoading extends CatalogState {
  CatalogLoading(super.state) : super.from();
}

final class CatalogLoaded extends CatalogState {
  CatalogLoaded(super.state) : super.from();
}

final class CatalogFailure extends CatalogState {
  CatalogFailure(super.state) : super.from();
}
