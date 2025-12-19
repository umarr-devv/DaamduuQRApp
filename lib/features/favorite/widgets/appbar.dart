import 'package:app/shared/theme/theme.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget {
  const FavoriteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.muted,
      automaticallyImplyLeading: false,
      pinned: true,
      shadowColor: theme.custom.shadow,
      title: Text('Мои Избранные'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(FluentIcons.search_24_regular)),
        SizedBox(width: 16),
      ],
    );
  }
}
