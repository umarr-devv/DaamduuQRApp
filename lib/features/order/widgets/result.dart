import 'package:app/blocs/blocs.dart';
import 'package:app/shared/shared.dart';
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
                  Text(
                    'Стоимость',
                    style: theme.custom.subtitle.copyWith(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        state.totalSum.toStringAsFixed(0),
                        style: theme.custom.price.copyWith(fontSize: 16),
                      ),
                      SomSymbol(size: 14),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Услуга',
                    style: theme.custom.subtitle.copyWith(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        '0',
                        style: theme.custom.price.copyWith(fontSize: 16),
                      ),
                      SomSymbol(size: 14),
                    ],
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Сумма',
                    style: theme.custom.title.copyWith(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Text(
                        state.totalSum.toStringAsFixed(0),
                        style: theme.custom.price.copyWith(fontSize: 20),
                      ),
                      SomSymbol(size: 16),
                    ],
                  ),
                ],
              ),
              const SizedBox(),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  child: Text(
                    'Подтвредить заказ',
                    style: TextStyle(fontSize: 16),
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
