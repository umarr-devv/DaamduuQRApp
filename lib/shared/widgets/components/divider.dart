import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.indent = 32, this.verticalPadding = 4});

  final double indent;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: Divider(
        color: theme.custom.opacityFg,
        indent: indent,
        endIndent: indent,
      ),
    );
  }
}
