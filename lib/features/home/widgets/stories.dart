import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          12,
          (index) => GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(StoryRoute());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 128,
              width: 96,
              decoration: BoxDecoration(
                color: theme.custom.primaryBackground,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
