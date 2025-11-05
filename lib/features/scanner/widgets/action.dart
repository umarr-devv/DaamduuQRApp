import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ScannerAction extends StatelessWidget {
  const ScannerAction({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: 12, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            icon: Icons.close,
            radius: 12,
            background: theme.custom.primaryFg,
            foreground: theme.custom.white,
            onTap: () {
              AutoRouter.of(context).maybePop();
            },
          ),
        ],
      ),
    );
  }
}
