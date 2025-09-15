import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// FOR ONLY DEBUG
class FoodCategoryItemData {
  FoodCategoryItemData({
    required this.id,
    required this.image,
    required this.label,
  });

  final int id;
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
          fontSize: 16,
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
    FoodCategoryItemData(
      id: 0,
      image: 'assets/placeholder/main_food.jpg',
      label: 'Блюда',
    ),
    FoodCategoryItemData(
      id: 1,
      image: 'assets/placeholder/soup.jpg',
      label: 'Супы',
    ),
    FoodCategoryItemData(
      id: 2,
      image: 'assets/placeholder/salad.jpg',
      label: 'Салаты',
    ),
    FoodCategoryItemData(
      id: 3,
      image: 'assets/placeholder/sushi.jpg',
      label: 'Суши',
    ),
    FoodCategoryItemData(
      id: 4,
      image: 'assets/placeholder/drinks.jpg',
      label: 'Напитики',
    ),
    FoodCategoryItemData(
      id: 5,
      image: 'assets/placeholder/desert.jpg',
      label: 'Десерты',
    ),
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

  final FoodCategoryItemData category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(CategoryRoute(category: category));
      },
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: Stack(
          children: [
            Hero(
              tag: 'category-image-${category.id}',
              child: Image.asset(
                category.image,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      theme.custom.opacityBlack,
                      theme.custom.transparent,
                    ],
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
      ),
    );
  }
}
