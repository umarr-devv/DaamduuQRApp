import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MaybePopButton extends StatelessWidget {
  const MaybePopButton({super.key, this.shadow = true, this.close = false});

  final bool shadow;
  final bool close;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: CustomIconButton(
        icon: close ? Icons.close : Icons.arrow_back,
        shadow: shadow,
        radius: 12,
        onTap: () {
          AutoRouter.of(context).maybePop();
        },
      ),
    );
  }
}
