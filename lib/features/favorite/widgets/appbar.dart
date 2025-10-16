import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:app/utils/uuid.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FavoriteAppBar extends StatefulWidget {
  const FavoriteAppBar({super.key});

  @override
  State<FavoriteAppBar> createState() => _FavoriteAppBarState();
}

class _FavoriteAppBarState extends State<FavoriteAppBar> {
  final String uniqueId = generateUuid();
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondaryBackground,
      automaticallyImplyLeading: false,
      title: Text('Мои Избранные'),
      actions: [
        CustomIconButton(
          icon: 'assets/svg/search.svg',
          radius: 12,
          onTap: () {
            AutoRouter.of(context).push(
              SearchRoute(textController: textController, uniqueId: uniqueId),
            );
          },
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
