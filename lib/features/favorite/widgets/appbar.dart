import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteAppBar extends StatelessWidget {
  const FavoriteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondaryBackground,
      title: Container(
        margin: const EdgeInsets.only(top: 4),

        child: Row(
          spacing: 12,
          children: [
            Expanded(child: _AppBarSearch()),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: theme.custom.primaryBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.sort),
            ),
          ],
        ),
      ),
      pinned: true,
    );
  }
}

class _AppBarSearch extends StatelessWidget {
  const _AppBarSearch();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: theme.custom.primaryBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 12,
        children: [
          SvgPicture.asset(
            'assets/svg/search.svg',
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              theme.custom.primaryForeground,
              BlendMode.srcIn,
            ),
          ),
          Text(
            'Поиск',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: theme.custom.secondaryForeground,
            ),
          ),
        ],
      ),
    );
  }
}
