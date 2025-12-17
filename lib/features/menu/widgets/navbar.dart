import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class _MenuNavBarItemData {
  _MenuNavBarItemData({
    required this.activeSvgIcon,
    required this.inactiveSvgIcon,
  });
  final String activeSvgIcon;
  final String inactiveSvgIcon;
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
    ),
  ];

  void onTap(int index) {
    widget.tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBottomNavigationBar.builder(
      height: 80,
      activeIndex: widget.tabsRouter.activeIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      leftCornerRadius: 24,
      rightCornerRadius: 24,
      backgroundColor: theme.custom.background,
      scaleFactor: -0.2,
      shadow: BoxShadow(
        offset: Offset(0, -1),
        blurRadius: 4,
        color: theme.custom.shadow,
      ),
      onTap: (index) {
        widget.tabsRouter.setActiveIndex(index);
      },
      tabBuilder: (index, isActive) {
        return _MenuNavBarItem(
          item: items[index],
          isActive: isActive,
          index: index,
        );
      },
      itemCount: items.length,
    );
  }
}

class _MenuNavBarItem extends StatelessWidget {
  const _MenuNavBarItem({
    required this.item,
    required this.isActive,
    required this.index,
  });

  final _MenuNavBarItemData item;
  final bool isActive;
  final int index;

  EdgeInsets padding() {
    if (index == 0 || index == 1) {
      return const EdgeInsets.only(left: 16);
    } else if (index == 2 || index == 3) {
      return const EdgeInsets.only(right: 16);
    }
    return const EdgeInsets.all(0);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return UnconstrainedBox(
      child: Padding(
        padding: padding(),
        child: SvgPicture.asset(
          isActive ? item.activeSvgIcon : item.inactiveSvgIcon,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            isActive ? theme.custom.primary : theme.custom.onMuted,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
