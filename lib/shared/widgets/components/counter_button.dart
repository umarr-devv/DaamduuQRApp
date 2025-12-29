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
    this.radius = 12,
  });

  final int? value;

  final void Function() onFirstAdd;
  final void Function() onAdd;
  final void Function() onRemove;

  final double iconSize;
  final double fontSize;
  final Color? removeColor;
  final double radius;

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
              SizedBox(
                height: iconSize + 16,
                width: iconSize + 16,
                child: IconButton.outlined(
                  onPressed: onRemove,
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(radius),
                    ),
                  ),
                  icon: Icon(Icons.remove, size: iconSize),
                ),
              ),
              Text(
                value?.toStringAsFixed(0) ?? '0',
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.foreground,
                ),
              ),
              SizedBox(
                height: iconSize + 16,
                width: iconSize + 16,
                child: IconButton.filled(
                  onPressed: value == null ? onFirstAdd : onAdd,
                  style: IconButton.styleFrom(
                    backgroundColor: theme.custom.secondary,
                    foregroundColor: theme.custom.onSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(radius),
                    ),
                  ),
                  icon: Icon(Icons.add, size: iconSize),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
