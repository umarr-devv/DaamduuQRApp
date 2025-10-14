import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class PopularProductTitle extends StatelessWidget {
  const PopularProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
      child: Text(
        'Популярные позиции',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: theme.custom.secondaryForeground,
        ),
      ),
    );
  }
}

class PopularProductList extends StatefulWidget {
  const PopularProductList({super.key});

  @override
  State<PopularProductList> createState() => _PopularProductListState();
}

class _PopularProductListState extends State<PopularProductList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        if (state is HomeLoading) {
          return _LoadingPlaceholder();
        }
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductCard(product: state.products[index]);
            }, childCount: state.products.length),
          ),
        );
      },
    );
  }
}

class _LoadingPlaceholder extends StatelessWidget {
  const _LoadingPlaceholder();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return Column(
            children: [
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: theme.custom.shimmerBase,
                  highlightColor: theme.custom.shimmerHighlight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.custom.primaryBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: theme.custom.primaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Shimmer.fromColors(
                    baseColor: theme.custom.shimmerBase,
                    highlightColor: theme.custom.shimmerHighlight,
                    child: Container(
                      height: 24,
                      width: 128,
                      decoration: BoxDecoration(
                        color: theme.custom.primaryBackground,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }, childCount: 12),
      ),
    );
  }
}
