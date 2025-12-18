import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({
    super.key,
    required this.value,
    required this.onFirstAdd,
    required this.onAdd,
    required this.onRemove,
    this.removeColor,
    this.iconSize = 24,
    this.fontSize = 18,
  });

  final int? value;

  final void Function() onFirstAdd;
  final void Function() onAdd;
  final void Function() onRemove;

  final double iconSize;
  final double fontSize;
  final Color? removeColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {},
      child: Builder(
        builder: (context) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 12,
            children: [
              CustomIconButton(
                icon: Icons.remove,
                size: iconSize,
                radius: 12,
                shadow: false,
                background: removeColor ?? theme.custom.muted,
                onTap: value == null ? () {} : onRemove,
              ),
              Text(
                value?.toStringAsFixed(0) ?? '0',
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.foreground,
                ),
              ),
              CustomIconButton(
                icon: Icons.add,
                size: iconSize,
                radius: 12,
                background: theme.custom.primary,
                foreground: theme.custom.onPrimary,
                shadow: false,
                onTap: value == null ? onFirstAdd : onAdd,
              ),
            ],
          );
        },
      ),
    );
  }
}
