import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

// ONLY FOR DEBUG
class FoodData {
  FoodData({required this.image, required this.name, required this.price});
  final String image;
  final String name;
  final num price;
}

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

class HomePopularFoodsList extends StatefulWidget {
  const HomePopularFoodsList({super.key});

  @override
  State<HomePopularFoodsList> createState() => _HomePopularFoodsListState();
}

class _HomePopularFoodsListState extends State<HomePopularFoodsList> {
  final foods = [
    FoodData(image: 'assets/placeholder/food1.jpg', name: 'Стейк', price: 920),
    FoodData(
      image: 'assets/placeholder/food2.jpg',
      name: 'Лазанья',
      price: 440,
    ),
    FoodData(
      image: 'assets/placeholder/food3.jpg',
      name: 'Шаверма',
      price: 240,
    ),
    FoodData(image: 'assets/placeholder/food4.jpg', name: 'Пицца', price: 1090),
  ];

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
          return FoodCard(food: foods[index]);
        }, childCount: foods.length),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Container(
        decoration: BoxDecoration(color: theme.custom.primaryBackground),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    food.image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  _FoodFavoriteButton(),
                  _FoodPrice(food: food),
                ],
              ),
            ),
            _FoodCardInfo(food: food),
          ],
        ),
      ),
    );
  }
}

class _FoodFavoriteButton extends StatefulWidget {
  const _FoodFavoriteButton();

  @override
  State<_FoodFavoriteButton> createState() => _FoodFavoriteButtonState();
}

class _FoodFavoriteButtonState extends State<_FoodFavoriteButton> {
  bool favorite = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 36,
      width: 36,
      margin: const EdgeInsets.all(6),
      child: IconButton(
        onPressed: () async {
          setState(() {
            scale = 0.8;
          });
          await Future.delayed(Duration(milliseconds: 125));
          favorite = !favorite;
          setState(() {
            scale = 1;
          });
        },
        style: IconButton.styleFrom(
          backgroundColor: theme.custom.primaryBackground,
        ),
        icon: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 125),
          child: Icon(
            favorite ? Icons.favorite : Icons.favorite_border_rounded,
            size: 20,
            color: favorite
                ? theme.custom.primaryColor
                : theme.custom.secondaryForeground,
          ),
        ),
      ),
    );
  }
}

class _FoodPrice extends StatelessWidget {
  const _FoodPrice({required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: food.price.toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.primaryForeground,
                ),
              ),
              WidgetSpan(child: SizedBox(width: 3)),
              TextSpan(
                text: 'c',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: theme.custom.secondaryForeground,
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodCardInfo extends StatelessWidget {
  const _FoodCardInfo({required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Блюда',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                ),
              ),
              Text(
                food.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.primaryForeground,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: theme.custom.primaryForeground,
                shape: CircleBorder(),
                padding: const EdgeInsets.all(0),
              ),
              padding: const EdgeInsets.all(0),
              icon: Icon(Icons.add, size: 20, color: theme.custom.white),
            ),
          ),
        ],
      ),
    );
  }
}
