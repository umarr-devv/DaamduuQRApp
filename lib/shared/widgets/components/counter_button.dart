import 'package:animated_flip_counter/animated_flip_counter.dart';
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
  });

  final int? value;

  final void Function() onFirstAdd;
  final void Function() onAdd;
  final void Function() onRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.custom.secondaryBackground,
        borderRadius: BorderRadius.circular(64),
        border: Border.all(color: theme.custom.opacityBorder, width: 1),
      ),
      child: Builder(
        builder: (context) {
          if (value == null) {
            return CustomIconButton(
              icon: Icons.add,
              size: 16,
              background: theme.custom.primaryColor,
              foreground: theme.custom.white,
              onTap: value == null ? onFirstAdd : onAdd,
            );
          } else {
            return Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                CustomIconButton(
                  icon: Icons.remove,
                  size: 16,
                  onTap: value == null ? () {} : onRemove,
                ),
                SizedBox(
                  height: 32,
                  child: AnimatedFlipCounter(
                    value: value ?? 0,
                    duration: const Duration(milliseconds: 175),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: theme.custom.primaryForeground,
                    ),
                  ),
                ),
                CustomIconButton(
                  icon: Icons.add,
                  size: 16,
                  background: theme.custom.primaryColor,
                  foreground: theme.custom.white,
                  onTap: value == null ? onFirstAdd : onAdd,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
