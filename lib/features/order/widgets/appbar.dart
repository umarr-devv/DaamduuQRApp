import 'package:app/blocs/order/order_cubit.dart';
import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:app/utils/undefined.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<OrderCubit>(context);
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
        IconButton(
          onPressed: () {
            cubit.setEstablishment(undefined);
            AutoRouter.of(context).maybePop();
          },
          icon: Icon(FluentIcons.arrow_exit_20_filled),
        ),
        SizedBox(width: 8),
      ],
    );
  }
}
