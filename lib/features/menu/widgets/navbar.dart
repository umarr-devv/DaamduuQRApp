import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  activeIcon: CustomIcons.house_fill,
                  inactiveIcon: CustomIcons.house,
                  index: 0,
                ),
                _MenuNavBarItem(
                  activeIcon: CustomIcons.ticket_fill,
                  inactiveIcon: CustomIcons.ticket,
                  index: 1,
                ),
                SizedBox(width: 48),
                _MenuNavBarItem(
                  activeIcon: CustomIcons.heart_fill,
                  inactiveIcon: CustomIcons.heart,
                  index: 2,
                ),
                _MenuNavBarItem(
                  activeIcon: CustomIcons.user_fill,
                  inactiveIcon: CustomIcons.user,
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

class _ScanButton extends StatelessWidget {
  const _ScanButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: BlocProvider.of<OrderCubit>(context),
      builder: (context, state) {
        if (state.items.isNotEmpty) {
          return Stack(
            children: [
              IconButton.filled(
                onPressed: () {
                  AutoRouter.of(context).push(OrderRoute());
                },
                style: IconButton.styleFrom(
                  backgroundColor: theme.custom.secondary,
                  padding: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(64),
                  ),
                ),
                icon: CustomIcons.receipt(color: theme.custom.background),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: theme.custom.primary,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: theme.custom.background,
                      width: 2,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    state.items.length.toStringAsFixed(0),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                      color: theme.custom.onSecondary,
                    ),
                  ),
                ),
              ),
            ],
          );
        } else {
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
            icon: CustomIcons.qr(color: theme.custom.onSecondary),
          );
        }
      },
    );
  }
}

class _MenuNavBarItem extends StatefulWidget {
  const _MenuNavBarItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.index,
  });
  final CustomIcons activeIcon;
  final CustomIcons inactiveIcon;
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
        child: active
            ? widget.activeIcon(color: theme.custom.primary)
            : widget.inactiveIcon(color: theme.custom.onMuted),
      ),
    );
  }
}
