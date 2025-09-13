import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(24),
      height: 200,
      decoration: BoxDecoration(
        color: theme.custom.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
