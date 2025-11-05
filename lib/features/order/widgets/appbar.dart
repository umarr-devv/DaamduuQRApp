import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
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
          ? theme.custom.primaryBg
          : theme.custom.secondaryBg,
      automaticallyImplyLeading: false,
      pinned: true,
      shadowColor: theme.custom.highShadowColor,
      title: Text('Мой Заказ'),
      actions: [
        CustomTextButton(
          label: 'Очистить',
          icon: 'assets/svg/trash-xmark.svg',
          radius: 12,
          size: 20,
          shadow: false,
          background: theme.custom.transparent,
          foreground: theme.custom.primary,
          onTap: () {},
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
