import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
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
        CustomIconButton(
          icon: 'assets/svg/search.svg',
          radius: 12,
          onTap: () {
            AutoRouter.of(context).push(SearchRoute());
          },
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
