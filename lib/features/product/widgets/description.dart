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
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: theme.custom.muted,
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.history, color: theme.custom.onMuted),
                      Text(
                        '${state.product.cookingMinute.toStringAsFixed(0)} мин',
                        style: theme.custom.subtitle,
                      ),
                    ],
                  ),
                ),
                if (state.product.description != null)
                  Text(
                    state.product.description ?? '',
                    style: theme.custom.text,
                  ),
                if (state.product.composition != null)
                  RichText(
                    text: TextSpan(
                      style: theme.custom.label,
                      children: [
                        TextSpan(text: 'Состав: ', style: theme.custom.label),
                        TextSpan(
                          text: state.product.composition ?? '',
                          style: theme.custom.text,
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
