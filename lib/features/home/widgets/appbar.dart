import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      title: SvgPicture.asset('assets/svg/logo.svg', height: 20),
      backgroundColor: theme.custom.primaryBackground,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svg/bell.svg',
            height: 20,
            width: 20,
            colorFilter: ColorFilter.mode(
              theme.custom.primaryForeground,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
