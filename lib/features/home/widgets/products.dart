import 'package:app/features/home/blocs/home_tops/home_tops_cubit.dart';
import 'package:app/shared/shared.dart';
import 'package:app/shared/widgets/globals/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Популярные позиции', style: theme.custom.label),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
            bottom: 24,
          ),
          sliver: BlocBuilder<HomeTopsCubit, HomeTopsState>(
            bloc: BlocProvider.of<HomeTopsCubit>(context),
            builder: (context, state) {
              return SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ProductCard(product: state.products[index]);
                }, childCount: state.products.length),
              );
            },
          ),
        ),
      ],
    );
  }
}
