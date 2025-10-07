import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StoryDetailButton extends StatelessWidget {
  const StoryDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: mediaQuery.padding.bottom + 16,
        left: 16,
        right: 16,
      ),
      width: double.infinity,
      height: 42,
      child: CustomActionButton(
        label: 'Подробнее',
        background: theme.custom.primaryBackground,
        foreground: theme.custom.primaryForeground,
      ),
    );
  }
}
