import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    this.onTap,
    required this.label,
    this.background,
    this.foreground,
    this.icon,
  });

  final void Function()? onTap;
  final String label;
  final Color? background;
  final Color? foreground;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: background ?? theme.custom.primaryForeground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      ),
      child: Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
          Icon(icon, size: 24, color: foreground ?? theme.custom.white),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: foreground ?? theme.custom.white,
            ),
          ),
        ],
      ),
    );
  }
}
