import 'dart:ui';

import 'package:app/blocs/order/order_cubit.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuNavBar extends StatelessWidget {
  const MenuNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Container(
      height: 64 + mediaQuery.padding.bottom,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: theme.custom.border, width: 1)),
      ),
      child: Stack(
        children: [
          BottomAppBar(
            height: 64,
            color: theme.custom.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _MenuNavBarItem(
                  activeIcon: 'assets/svg/house-fill.svg',
                  inactiveIcon: 'assets/svg/house.svg',
                  index: 0,
                ),
                _BasketNavBarItem(),
                SizedBox(width: 42),
                _MenuNavBarItem(
                  activeIcon: 'assets/svg/heart-fill.svg',
                  inactiveIcon: 'assets/svg/heart.svg',
                  index: 2,
                ),
                _MenuNavBarItem(
                  activeIcon: 'assets/svg/user-fill.svg',
                  inactiveIcon: 'assets/svg/user.svg',
                  index: 3,
                ),
              ],
            ),
          ),
          Center(child: SafeArea(child: _ScanButton())),
        ],
      ),
    );
  }
}

class _BasketNavBarItem extends StatelessWidget {
  const _BasketNavBarItem();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: BlocProvider.of<OrderCubit>(context),
      builder: (context, state) {
        return Stack(
          children: [
            _MenuNavBarItem(
              activeIcon: 'assets/svg/shopping-basket-fill.svg',
              inactiveIcon: 'assets/svg/shopping-basket.svg',
              index: 1,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: theme.custom.background,
                  borderRadius: BorderRadius.circular(64),
                  border: Border.all(color: theme.custom.border),
                ),
                alignment: Alignment.center,
                child: Text(
                  state.items.length.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: theme.custom.foreground,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ScanButton extends StatelessWidget {
  const _ScanButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton.filled(
      onPressed: () {
        AutoRouter.of(context).push(ScannerRoute());
      },
      style: IconButton.styleFrom(
        backgroundColor: theme.custom.secondary,
        padding: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(64),
        ),
      ),
      icon: SvgPicture.asset(
        'assets/svg/icon.svg',
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(theme.custom.background, BlendMode.srcIn),
      ),
    );
  }
}

class _MenuNavBarItem extends StatefulWidget {
  const _MenuNavBarItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.index,
  });
  final String activeIcon;
  final String inactiveIcon;
  final int index;

  @override
  State<_MenuNavBarItem> createState() => _MenuNavBarItemState();
}

class _MenuNavBarItemState extends State<_MenuNavBarItem> {
  TabsRouter get tabsRouter => AutoTabsRouter.of(context);

  bool get active => tabsRouter.activeIndex == widget.index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoTabsRouter.of(context).setActiveIndex(widget.index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(color: theme.custom.transparent),
        child: SvgPicture.asset(
          active ? widget.activeIcon : widget.inactiveIcon,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            active ? theme.custom.primary : theme.custom.onMuted,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
