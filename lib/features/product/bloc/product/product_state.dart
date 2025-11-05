part of 'product_cubit.dart';

@JsonSerializable()
class ProductState extends Equatable {
  const ProductState({required this.product});

  final ProductScheme product;

  ProductState.from(ProductState other) : product = other.product;

  factory ProductState.fromJson(Map<String, dynamic> json) =>
      _$ProductStateFromJson(json);

  Map<String, dynamic> toJson() => _$ProductStateToJson(this);

  @override
  List<Object?> get props => [product];
}

final class ProductInitial extends ProductState {
  const ProductInitial({required super.product});
}
