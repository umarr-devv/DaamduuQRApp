part of 'catalog_cubit.dart';

@JsonSerializable()
class CatalogState extends Equatable {
  const CatalogState({
    required this.establishment,
    this.categories = const [],
    this.products = const [],
    this.currentCategory,
  });

  final EstablishmentScheme establishment;
  final List<CategoryScheme> categories;
  final List<ProductScheme> products;
  final CategoryScheme? currentCategory;

  CatalogState copyWith({
    List<CategoryScheme>? categories,
    List<ProductScheme>? products,
    Object? currentCategory,
  }) {
    return CatalogState(
      establishment: establishment,
      categories: categories ?? this.categories,
      products: products ?? this.products,
      currentCategory: undefCompare(currentCategory, this.currentCategory),
    );
  }

  CatalogState.from(CatalogState other)
    : establishment = other.establishment,
      products = other.products,
      categories = other.categories,
      currentCategory = other.currentCategory;

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
