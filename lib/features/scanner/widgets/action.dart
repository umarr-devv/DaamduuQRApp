import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ScannerAction extends StatelessWidget {
  const ScannerAction({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: mediaQuery.padding.top + 4,
        left: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).maybePop();
            },
            icon: Icon(Icons.close, color: theme.custom.white),
          ),
        ],
      ),
    );
  }
}
