import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MaybePopButton extends StatelessWidget {
  const MaybePopButton({
    super.key,
    this.shadow = true,
    this.close = false,
    this.foreground,
    this.background,
  });

  final bool shadow;
  final bool close;
  final Color? foreground;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: CustomIconButton(
        icon: close ? Icons.close : Icons.arrow_back,
        shadow: shadow,
        radius: 12,
        background: background,
        foreground: foreground,
        onTap: () {
          AutoRouter.of(context).maybePop();
        },
      ),
    );
  }
}
