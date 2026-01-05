import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      title: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIcons.receipt(color: theme.custom.foreground),
          Text('Заказ №64'),
        ],
      ),
      centerTitle: true,
      leading: MaybePopButton(),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(FluentIcons.chat_24_filled)),
        const SizedBox(width: 8),
      ],
    );
  }
}
