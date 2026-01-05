import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({super.key});

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
      children: [
        CustomIcons.time_past(size: 20, color: theme.custom.foreground),
        Text('История', style: theme.custom.label),
      ],
    );
  }
}
