import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.background,
    this.foreground,
  });
  final IconData icon;
  final Function onTap;
  final Color? background;
  final Color? foreground;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        backgroundColor: widget.background ?? theme.custom.primaryForeground,
      ),
      icon: Icon(widget.icon, color: widget.foreground ?? theme.custom.white),
    );
  }
}
