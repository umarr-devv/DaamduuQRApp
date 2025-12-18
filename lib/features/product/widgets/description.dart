import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/shared.dart';
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Подробнее', style: theme.custom.label),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: theme.custom.secondary,
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: Row(
                        spacing: 4,
                        children: [
                          Icon(
                            Icons.history,
                            size: 20,
                            color: theme.custom.onSecondary,
                          ),
                          Text(
                            state.product.cookingMinute.toStringAsFixed(0),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: theme.custom.onSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (state.product.description?.isNotEmpty ?? false)
                  Text(
                    state.product.description ?? '',
                    style: theme.custom.subtitle,
                  ),
                if (state.product.composition?.isNotEmpty ?? false)
                  RichText(
                    text: TextSpan(
                      style: theme.custom.subtitle,
                      children: [
                        TextSpan(
                          text: 'Состав: ',
                          style: TextStyle(color: theme.custom.foreground),
                        ),
                        TextSpan(text: state.product.composition ?? ''),
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
