import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 140,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(StoryRoute());
            },
            child: Container(
              width: 96,
              decoration: BoxDecoration(
                color: theme.custom.primaryBackground,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
        separatorBuilder: (context, inedx) => SizedBox(width: 12),
        itemCount: 12,
      ),
    );
  }
}
