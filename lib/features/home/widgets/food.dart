import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePopularFoodsTitle extends StatelessWidget {
  const HomePopularFoodsTitle({super.key});

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

class HomePopularFoodsList extends StatelessWidget {
  const HomePopularFoodsList({super.key});

  @override
  Widget build(BuildContext context) {
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
          return FoodCard();
        }, childCount: 12),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Container(
        decoration: BoxDecoration(color: theme.custom.primaryBackground),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: theme.custom.info),
              ),
            ),
            Container(height: 48),
          ],
        ),
      ),
    );
  }
}
