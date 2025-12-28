import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';

class PromotionsAppBar extends StatelessWidget {
  const PromotionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      title: Text('Промокоды'),
      backgroundColor: theme.custom.muted,
    );
  }
}
