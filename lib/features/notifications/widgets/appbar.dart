import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(leading: MaybePopButton(), title: _AppBarTitle());
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 8,
      children: [Text('Уведомления', style: theme.custom.label)],
    );
  }
}
