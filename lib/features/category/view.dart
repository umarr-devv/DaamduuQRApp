import 'package:app/features/category/widgets/widgets.dart';
import 'package:app/features/home/widgets/food_category.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final FoodCategoryItemData category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [CategoryAppBar(category: category)]),
    );
  }
}
