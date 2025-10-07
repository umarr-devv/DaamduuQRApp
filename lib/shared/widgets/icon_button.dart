import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.radius = 12,
    this.animation = true,
    this.background,
    this.foreground,
  });
  final IconData icon;
  final void Function() onTap;
  final double radius;
  final double size;
  final bool animation;
  final Color? background;
  final Color? foreground;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  double scale = 1;

  Future onPressed() async {
    if (widget.animation) {
      setState(() {
        scale = 0.8;
      });
      await Future.delayed(const Duration(milliseconds: 175));
      widget.onTap();
      setState(() {
        scale = 1;
      });
    } else {
      widget.onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: widget.size + 16,
      width: widget.size + 16,
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(widget.radius),
          ),
          backgroundColor: widget.background ?? theme.custom.primaryForeground,
        ),
        icon: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 175),
          child: Icon(
            widget.icon,
            size: widget.size,
            color: widget.foreground ?? theme.custom.white,
          ),
        ),
      ),
    );
  }
}
