import 'package:app/features/home/widgets/food.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePopularFoodsList extends StatefulWidget {
  const HomePopularFoodsList({super.key});

  @override
  State<HomePopularFoodsList> createState() => _HomePopularFoodsListState();
}

class _HomePopularFoodsListState extends State<HomePopularFoodsList> {
  final foods = [
    FoodData(image: 'assets/placeholder/food1.jpg', name: 'Стейк', price: 920),
    FoodData(
      image: 'assets/placeholder/food3.jpg',
      name: 'Шаверма',
      price: 240,
    ),
    FoodData(
      image: 'assets/placeholder/food2.jpg',
      name: 'Лазанья',
      price: 440,
    ),

    FoodData(image: 'assets/placeholder/food4.jpg', name: 'Пицца', price: 1090),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedSliver(
      decoration: BoxDecoration(color: theme.custom.secondaryBackground),
      sliver: SliverPadding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 64,
        ),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.9,
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            return FoodCard(food: foods[index]);
          }, childCount: foods.length),
        ),
      ),
    );
  }
}
