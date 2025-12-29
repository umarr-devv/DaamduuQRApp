import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MaybePopButton extends StatelessWidget {
  const MaybePopButton({
    super.key,
    this.close = false,
    this.foreground,
    this.background,
  });

  final bool close;
  final Color? foreground;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: IconButton(
        icon: Icon(
          close ? Icons.close : Icons.arrow_back_ios_new_rounded,
          color: foreground,
        ),
        style: IconButton.styleFrom(backgroundColor: background),
        onPressed: () {
          AutoRouter.of(context).maybePop();
        },
      ),
    );
  }
}
