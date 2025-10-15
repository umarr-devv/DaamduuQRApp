import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class _MenuNavBarItemData {
  _MenuNavBarItemData({
    required this.activeSvgIcon,
    required this.inactiveSvgIcon,
    this.toLogs = false,
  });
  final String activeSvgIcon;
  final String inactiveSvgIcon;
  final bool toLogs;
}

class MenuNavBar extends StatefulWidget {
  const MenuNavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  State<MenuNavBar> createState() => _MenuNavBarState();
}

class _MenuNavBarState extends State<MenuNavBar> {
  final items = [
    _MenuNavBarItemData(
      activeSvgIcon: 'assets/svg/house-fill.svg',
      inactiveSvgIcon: 'assets/svg/house.svg',
    ),
    _MenuNavBarItemData(
      activeSvgIcon: 'assets/svg/shopping-basket-fill.svg',
      inactiveSvgIcon: 'assets/svg/shopping-basket.svg',
    ),
    _MenuNavBarItemData(
      activeSvgIcon: 'assets/svg/heart-fill.svg',
      inactiveSvgIcon: 'assets/svg/heart.svg',
    ),
    _MenuNavBarItemData(
      activeSvgIcon: 'assets/svg/user-fill.svg',
      inactiveSvgIcon: 'assets/svg/user.svg',
      toLogs: true,
    ),
  ];

  void onTap(int index) {
    widget.tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        shadowColor: theme.custom.black,
        elevation: 1,
        color: theme.custom.primaryBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...items
                .sublist(0, 2)
                .map(
                  (item) => _MenuNavBarItem(
                    item: item,
                    index: items.indexOf(item),
                    tabsRouter: widget.tabsRouter,
                    onTap: onTap,
                  ),
                ),
            const SizedBox(width: 24),
            ...items
                .sublist(2)
                .map(
                  (item) => _MenuNavBarItem(
                    item: item,
                    index: items.indexOf(item),
                    tabsRouter: widget.tabsRouter,
                    onTap: onTap,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class _MenuNavBarItem extends StatefulWidget {
  const _MenuNavBarItem({
    required this.item,
    required this.index,
    required this.tabsRouter,
    required this.onTap,
  });

  final _MenuNavBarItemData item;
  final int index;
  final TabsRouter tabsRouter;
  final Function(int) onTap;

  @override
  State<_MenuNavBarItem> createState() => _MenuNavBarItemState();
}

class _MenuNavBarItemState extends State<_MenuNavBarItem> {
  bool get active => widget.index == widget.tabsRouter.activeIndex;

  double scale = 1.0;

  Future onTap() async {
    if (active) return;
    setState(() {
      scale = 0.85;
    });
    widget.onTap(widget.index);
    await Future.delayed(Duration(milliseconds: 75));
    setState(() {
      scale = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      onLongPress: () {
        if (widget.item.toLogs) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TalkerScreen(talker: GetIt.I<Talker>()),
            ),
          );
        }
      },
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 75),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          decoration: BoxDecoration(color: theme.custom.transparent),
          child: SvgPicture.asset(
            active ? widget.item.activeSvgIcon : widget.item.inactiveSvgIcon,
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              active
                  ? theme.custom.primaryColor
                  : theme.custom.secondaryForeground,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
