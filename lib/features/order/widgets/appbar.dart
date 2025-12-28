import 'package:app/shared/widgets/buttons/pop.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: Text('Мой Заказ'),
      leading: MaybePopButton(),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(FluentIcons.chat_24_filled)),
        const SizedBox(width: 8),
      ],
    );
  }
}
