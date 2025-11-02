import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: UnconstrainedBox(child: MaybePopButton(shadow: false)),
      title: _AppBarTitle(),
    );
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
      children: [
        Icon(Icons.settings, size: 24, color: theme.custom.primaryForeground),
        Text(
          'Настройки',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: theme.custom.primaryForeground,
          ),
        ),
      ],
    );
  }
}
