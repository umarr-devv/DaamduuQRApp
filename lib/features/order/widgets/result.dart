import 'package:app/blocs/blocs.dart';
import 'package:app/shared/shared.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderResult extends StatelessWidget {
  const OrderResult({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: BlocProvider.of<OrderCubit>(context),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: theme.custom.muted,
            border: Border(
              top: BorderSide(color: theme.custom.border, width: 1),
            ),
          ),
          child: Column(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Сумма', style: theme.custom.label),
                  Row(
                    children: [
                      Text(
                        state.totalSum.toStringAsFixed(0),
                        style: theme.custom.price,
                      ),
                      SomSymbol(size: 16),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.checkmark_24_regular),
                      Text('Подтвердить заказ'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
