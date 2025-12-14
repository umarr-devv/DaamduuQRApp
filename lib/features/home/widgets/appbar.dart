import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  double toolbarHeight = 64;

  bool isCollapsed = false;

  void scrollListener() {
    if (widget.scrollController.offset > 1) {
      if (!isCollapsed) {
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset < 1) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      shadowColor: theme.custom.shadow,
      toolbarHeight: toolbarHeight,
      pinned: true,
      title: _AppBarTitle(),
      backgroundColor: isCollapsed
          ? theme.custom.background
          : theme.custom.secondary,
      actions: [
        CustomIconButton(
          icon: 'assets/svg/bell.svg',
          radius: 12,
          shadow: !isCollapsed,
          onTap: () {
            AutoRouter.of(context).push(NotificationsRoute());
          },
        ),
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
              color: theme.custom.primary,
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
