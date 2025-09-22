import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.background,
    this.foreground,
  });
  final IconData icon;
  final void Function() onTap;
  final double size;
  final Color? background;
  final Color? foreground;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: widget.size + 16,
      width: widget.size + 16,
      child: IconButton(
        onPressed: widget.onTap,
        style: IconButton.styleFrom(
          backgroundColor: widget.background ?? theme.custom.primaryForeground,
        ),
        icon: Icon(
          widget.icon,
          size: widget.size,
          color: widget.foreground ?? theme.custom.white,
        ),
      ),
    );
  }
}
