import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondary,
      automaticallyImplyLeading: false,
      pinned: true,
      title: Text('Мой Заказ', style: theme.custom.labelTextStyle),
      actions: [_AppBarActions(), const SizedBox(width: 16)],
    );
  }
}

class _AppBarActions extends StatelessWidget {
  const _AppBarActions();

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);
    final theme = Theme.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: cubit,
      builder: (context, state) {
        final available = state.items.isNotEmpty;
        return CustomTextButton(
          label: 'Очистить',
          radius: 12,
          size: 24,
          shadow: false,
          background: theme.custom.transparent,
          foreground: available
              ? theme.custom.primary
              : theme.custom.onSecondary,
          animation: available,
          onTap: () {
            if (available) {
              cubit.clearItems();
            }
          },
        );
      },
    );
  }
}
