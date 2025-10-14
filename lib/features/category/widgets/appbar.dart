import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key, required this.category});

  final CategoryScheme category;

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

  final CategoryScheme category;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'category-image-${category.id}',
      child: CustomImage(imageId: category.imageId),
    );
  }
}
