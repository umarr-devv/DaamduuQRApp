import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTitleButton extends StatefulWidget {
  const CustomTitleButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.color,
  });

  final void Function() onTap;
  final IconData icon;
  final Color? color;

  @override
  State<CustomTitleButton> createState() => _CustomTitleButtonState();
}

class _CustomTitleButtonState extends State<CustomTitleButton> {
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () async {
        setState(() {
          scale = 0.75;
        });
        widget.onTap();
        await Future.delayed(Duration(milliseconds: 125));
        setState(() {
          scale = 1;
        });
      },
      style: IconButton.styleFrom(
        backgroundColor: theme.custom.primaryBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        shadowColor: theme.custom.shadowColor,
        elevation: 12,
      ),
      icon: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 125),
        child: Icon(
          widget.icon,
          size: 20,
          color: widget.color ?? theme.custom.primaryForeground,
        ),
      ),
    );
  }
}
