part of 'catalog_cubit.dart';

@JsonSerializable()
class CatalogState extends Equatable {
  const CatalogState({
    required this.establishment,
    this.categories = const [],
    this.products = const [],
    this.currentCategory,
    required this.updateTime,
  });

  final EstablishmentScheme establishment;
  final List<CategoryScheme> categories;
  final List<ProductScheme> products;
  final CategoryScheme? currentCategory;
  final DateTime updateTime;

  List<ProductScheme> get currenctProducts {
    if (currentCategory == null) {
      return products;
    } else {
      return products
          .where((i) => i.category.id == currentCategory?.id)
          .toList();
    }
  }

  CatalogState copyWith({
    List<CategoryScheme>? categories,
    List<ProductScheme>? products,
    Object? currentCategory,
    DateTime? updateTime,
  }) {
    return CatalogState(
      establishment: establishment,
      categories: categories ?? this.categories,
      products: products ?? this.products,
      currentCategory: undefCompare(currentCategory, this.currentCategory),
      updateTime: DateTime.now(),
    );
  }

  CatalogState.from(CatalogState other)
    : establishment = other.establishment,
      products = other.products,
      categories = other.categories,
      currentCategory = other.currentCategory,
      updateTime = other.updateTime;

  factory CatalogState.fromJson(Map<String, dynamic> json) =>
      _$CatalogStateFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogStateToJson(this);

  @override
  List<Object?> get props => [establishment, categories, currentCategory, updateTime];
}

final class CatalogInitial extends CatalogState {
  const CatalogInitial({required super.establishment, required super.updateTime});
}

final class CatalogLoading extends CatalogState {
  CatalogLoading(super.state) : super.from();
}

final class CatalogLoaded extends CatalogState {
  CatalogLoaded(super.state) : super.from();
}

final class CatalogSet extends CatalogState {
  CatalogSet(super.state) : super.from();
}

final class CatalogFailure extends CatalogState {
  CatalogFailure(super.state) : super.from();
}
