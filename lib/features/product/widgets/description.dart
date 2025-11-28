import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.history, color: theme.custom.green),
                    Text(
                      '45 мин',
                      style: theme.custom.labelLarge.copyWith(
                        color: theme.custom.green,
                      ),
                    ),
                  ],
                ),
                if (state.product.description != null)
                  Text(
                    state.product.description ?? '',
                    style: theme.custom.labelMedium,
                  ),
                if (state.product.composition != null)
                  RichText(
                    text: TextSpan(
                      style: theme.custom.labelMedium,
                      children: [
                        TextSpan(
                          text: 'Состав: ',
                          style: theme.custom.labelMediumAlt,
                        ),
                        TextSpan(
                          text: state.product.composition ?? '',
                          style: theme.custom.labelMedium,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
