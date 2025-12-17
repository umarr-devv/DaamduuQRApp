import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.muted,
      automaticallyImplyLeading: false,
      pinned: true,
      title: Text('Мой Заказ'),
    );
  }
}
