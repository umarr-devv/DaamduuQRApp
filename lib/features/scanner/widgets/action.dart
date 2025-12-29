import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
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
          MaybePopButton(
            close: true,
            background: theme.custom.transparent,
            foreground: theme.custom.white,
          ),
        ],
      ),
    );
  }
}
