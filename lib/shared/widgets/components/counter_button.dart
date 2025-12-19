import 'package:app/shared/theme/theme.dart';
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
              IconButton.outlined(
                onPressed: onRemove,
                icon: Icon(Icons.remove),
              ),
              Text(
                value?.toStringAsFixed(0) ?? '0',
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.foreground,
                ),
              ),
              IconButton.filled(
                onPressed: value == null ? onFirstAdd : onAdd,
                style: IconButton.styleFrom(
                  backgroundColor: theme.custom.secondary,
                ),
                icon: Icon(Icons.add),
              ),
            ],
          );
        },
      ),
    );
  }
}
