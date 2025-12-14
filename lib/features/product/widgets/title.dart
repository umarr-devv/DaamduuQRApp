import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/currency.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProductInfo(product: state.product),
                _ProductPrice(product: state.product),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ProductInfo extends StatelessWidget {
  const _ProductInfo({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.category.name, style: theme.custom.labelTextStyle),
        Text(product.name, style: theme.custom.labelTextStyle),
      ],
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: theme.custom.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 4,
        children: [
          Text(
            product.price.toStringAsFixed(1),
            style: theme.custom.labelTextStyle.copyWith(fontSize: 18),
          ),
          SomSymbol(),
        ],
      ),
    );
  }
}
