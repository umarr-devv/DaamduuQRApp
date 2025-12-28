import 'package:app/shared/shared.dart';
import 'package:app/shared/widgets/buttons/pop.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset(
            'assets/svg/receipt.svg',
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              theme.custom.foreground,
              BlendMode.srcIn,
            ),
          ),
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
