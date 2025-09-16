import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuActionButton extends StatelessWidget {
  const MenuActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      onPressed: () {
        AutoRouter.of(context).push(ScannerRoute());
      },
      backgroundColor: theme.custom.primaryForeground,
      splashColor: theme.custom.splashColor,
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        'assets/svg/qr.svg',
        height: 28,
        width: 28,
        colorFilter: ColorFilter.mode(theme.custom.white, BlendMode.srcIn),
      ),
    );
  }
}
