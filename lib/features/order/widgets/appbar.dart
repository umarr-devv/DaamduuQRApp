import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class OrderAppBar extends StatefulWidget {
  const OrderAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<OrderAppBar> createState() => _OrderAppBarState();
}

class _OrderAppBarState extends State<OrderAppBar> {
  bool isCollapsed = false;

  void scrollListener() {
    if (widget.scrollController.offset > 12) {
      if (!isCollapsed) {
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset < 12) {
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
      backgroundColor: isCollapsed
          ? theme.custom.primaryBackground
          : theme.custom.secondaryBackground,
      automaticallyImplyLeading: false,
      pinned: true,
      shadowColor: theme.custom.highShadowColor,
      title: Text('Мой Заказ'),
    );
  }
}
