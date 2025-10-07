import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/icon_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class StoryActions extends StatelessWidget {
  const StoryActions({super.key});

  Future share() async {
    // FOR DEBUG
    await SharePlus.instance.share(ShareParams(text: 'Отменный ресторан :)'));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            icon: Icons.close,
            onTap: () {
              AutoRouter.of(context).maybePop();
            },
            background: theme.custom.primaryBackground,
            foreground: theme.custom.primaryForeground,
            animation: false,
          ),
          CustomIconButton(
            icon: Icons.share,
            onTap: share,
            background: theme.custom.primaryBackground,
            foreground: theme.custom.primaryForeground,
          ),
        ],
      ),
    );
  }
}
