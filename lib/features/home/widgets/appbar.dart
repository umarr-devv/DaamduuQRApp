import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      title: Text(
        'Главная', style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: theme.custom.primaryForeground,
        ),
      ),
    );
  }
}