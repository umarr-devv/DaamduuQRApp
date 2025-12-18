import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';

class OrderAddMore extends StatelessWidget {
  const OrderAddMore({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Row(
          spacing: 6,
          children: [
            Icon(Icons.add, color: theme.custom.primary),
            Text(
              'Добавить еще',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: theme.custom.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
