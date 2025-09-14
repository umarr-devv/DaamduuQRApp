import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    this.onTap,
    required this.label,
    required this.icon,
  });

  final void Function()? onTap;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: theme.custom.primaryForeground,
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
          Icon(icon, size: 24, color: theme.custom.white),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: theme.custom.white,
            ),
          ),
        ],
      ),
    );
  }
}
