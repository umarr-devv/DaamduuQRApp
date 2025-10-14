import 'package:app/features/category/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final CategoryScheme category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [CategoryAppBar(category: category)]),
    );
  }
}
