import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      shadowColor: theme.custom.highShadowColor,
      title: _AppBarTitle(),
      backgroundColor: theme.custom.secondaryBackground,
      actions: [
        CustomIconButton(icon: 'assets/svg/bell.svg', radius: 12, onTap: () {}),
        SizedBox(width: 16),
      ],
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Tilt(
      lightShadowMode: LightShadowMode.base,
      shadowConfig: ShadowConfig(disable: true),
      tiltConfig: TiltConfig(angle: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: theme.custom.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset('assets/svg/icon.svg', height: 20),
          ),
          SvgPicture.asset('assets/svg/logo.svg', height: 20),
        ],
      ),
    );
  }
}
