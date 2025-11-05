import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    super.key,
    required this.title,
    required this.text,
    this.icon,
  });

  final String title;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            if (icon != null)
              Icon(icon, size: 16, color: theme.custom.secondaryFg),
            Text(title, style: theme.custom.labelMedium),
          ],
        ),
        Text(text, style: theme.custom.labelMediumAlt),
      ],
    );
  }
}
