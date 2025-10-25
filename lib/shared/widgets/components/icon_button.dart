import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.radius = 64,
    this.animation = true,
    this.shadow = true,
    this.background,
    this.foreground,
  });
  final Object icon;
  final void Function() onTap;
  final double radius;
  final double size;
  final bool animation;
  final bool shadow;
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
          shadowColor: widget.shadow
              ? theme.custom.veryHighShadowColor
              : theme.custom.transparent,
          elevation: 4,
          backgroundColor: widget.background ?? theme.custom.primaryBackground,
        ),
        icon: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 175),
          child: widget.icon is IconData
              ? Icon(
                  widget.icon as IconData,
                  size: widget.size,
                  color: widget.foreground ?? theme.custom.primaryForeground,
                )
              : widget.icon is String
              ? SvgPicture.asset(
                  widget.icon as String,
                  width: widget.size,
                  height: widget.size,
                  colorFilter: ColorFilter.mode(
                    widget.foreground ?? theme.custom.primaryForeground,
                    BlendMode.srcIn,
                  ),
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
