import 'package:app/features/home/widgets/widgets.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key, required this.category});

  final FoodCategoryItemData category;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: _BackgroundImage(category: category),
      ),
      leading: CustomTitleButton(
        onTap: () {
          AutoRouter.of(context).maybePop();
        },
        icon: Icons.arrow_back_ios_new_rounded,
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({required this.category});

  final FoodCategoryItemData category;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'category-image-${category.id}',
      child: Image.asset(
        category.image,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
