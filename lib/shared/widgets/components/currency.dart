import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SomSymbol extends StatelessWidget {
  const SomSymbol({super.key, this.size = 16, this.color});

  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Transform.translate(
      offset: Offset(0, 2),
      child: SvgPicture.asset(
        'assets/svg/som.svg',
        height: size,
        width: size,
        colorFilter: ColorFilter.mode(
          color ?? theme.custom.onMuted,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
