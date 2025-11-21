part of 'product_cubit.dart';

@JsonSerializable()
class ProductState extends Equatable {
  const ProductState({
    required this.product,
    this.detailProduct,
    required this.updateTime,
  });

  final ProductScheme product;
  final DetailProductScheme? detailProduct;
  final DateTime updateTime;

  ProductState copyWith(DetailProductScheme? detailProduct) {
    return ProductState(
      product: product,
      detailProduct: detailProduct ?? this.detailProduct,
      updateTime: DateTime.now(),
    );
  }

  ProductState.from(ProductState other)
    : product = other.product,
      detailProduct = other.detailProduct,
      updateTime = DateTime.now();

  factory ProductState.fromJson(Map<String, dynamic> json) =>
      _$ProductStateFromJson(json);

  Map<String, dynamic> toJson() => _$ProductStateToJson(this);

  @override
  List<Object?> get props => [product, detailProduct, updateTime];
}

final class ProductInitial extends ProductState {
  const ProductInitial({required super.product, required super.updateTime});
}

final class ProductUpdating extends ProductState {
  ProductUpdating(super.state) : super.from();
}

final class ProductUpdated extends ProductState {
  ProductUpdated(super.state) : super.from();
}

final class ProductFailure extends ProductState {
  ProductFailure(super.state) : super.from();
}
