import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
    this.icon,
    required this.label,
    required this.onTap,
    this.size = 24,
    this.fontSize = 15,
    this.radius = 64,
    this.animation = true,
    this.shadow = true,
    this.colorFilter = true,
    this.background,
    this.foreground,
    this.padding,
  });
  final Object? icon;
  final String label;
  final void Function() onTap;
  final double radius;
  final double size;
  final double fontSize;
  final bool animation;
  final bool shadow;
  final bool colorFilter;
  final EdgeInsets? padding;
  final Color? background;
  final Color? foreground;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  double scale = 1;

  Future onPressed() async {
    if (widget.animation) {
      widget.onTap();
      setState(() {
        scale = 0.9;
      });
      await Future.delayed(const Duration(milliseconds: 175));
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
      child: TextButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(widget.radius),
          ),
          shadowColor: widget.shadow
              ? theme.custom.veryHighShadowColor
              : theme.custom.transparent,
          padding: widget.padding,
          elevation: 4,
          backgroundColor: widget.background ?? theme.custom.primaryBg,
        ),
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 175),
          child: Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.icon is IconData
                  ? Icon(
                      widget.icon as IconData,
                      size: widget.size,
                      color: widget.foreground ?? theme.custom.primaryFg,
                    )
                  : widget.icon is String
                  ? SvgPicture.asset(
                      widget.icon as String,
                      width: widget.size,
                      height: widget.size,
                      colorFilter: widget.colorFilter
                          ? ColorFilter.mode(
                              widget.foreground ?? theme.custom.primaryFg,
                              BlendMode.srcIn,
                            )
                          : null,
                    )
                  : SizedBox(),
              Text(
                widget.label,
                style: theme.custom.labelLarge.copyWith(
                  fontSize: widget.fontSize,
                  color: widget.foreground ?? theme.custom.primaryFg
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
