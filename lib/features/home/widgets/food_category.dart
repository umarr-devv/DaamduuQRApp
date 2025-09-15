import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class _CategoryItemData {
  _CategoryItemData({required this.image, required this.label});

  final String image;
  final String label;
}

class HomeFoodCategoriesTitle extends StatelessWidget {
  const HomeFoodCategoriesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
      child: Text(
        'Категории',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: theme.custom.secondaryForeground,
        ),
      ),
    );
  }
}

class HomeFoodCategories extends StatefulWidget {
  const HomeFoodCategories({super.key});

  @override
  State<HomeFoodCategories> createState() => _HomeFoodCategoriesState();
}

class _HomeFoodCategoriesState extends State<HomeFoodCategories> {
  final categories = [
    _CategoryItemData(
      image: 'assets/placeholder/main_food.jpg',
      label: 'Блюда',
    ),
    _CategoryItemData(image: 'assets/placeholder/soup.jpg', label: 'Супы'),
    _CategoryItemData(image: 'assets/placeholder/salad.jpg', label: 'Салаты'),
    _CategoryItemData(image: 'assets/placeholder/sushi.jpg', label: 'Суши'),
    _CategoryItemData(
      image: 'assets/placeholder/drinks.jpg',
      label: 'Напитики',
    ),
    _CategoryItemData(image: 'assets/placeholder/desert.jpg', label: 'Десерты'),
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
          childAspectRatio: 1.25,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return _CategorItem(category: categories[index]);
        }, childCount: categories.length),
      ),
    );
  }
}

class _CategorItem extends StatelessWidget {
  const _CategorItem({required this.category});

  final _CategoryItemData category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Stack(
        children: [
          Image.asset(
            category.image,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [theme.custom.opacityBlack, theme.custom.transparent],
                  stops: [0.35, 1],
                ),
              ),
              child: Text(
                category.label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
