import 'package:app/blocs/order/order_cubit.dart';
import 'package:app/core/router/router.dart';
import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToOrderButtons extends StatelessWidget {
  const ToOrderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(
              top: 12,
              left: 16,
              right: 16,
              bottom: mediaQuery.padding.bottom + 4,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.custom.background,
              border: Border(
                top: BorderSide(color: theme.custom.border, width: 1),
              ),
            ),
            child: _AddButtons(product: state.product),
          ),
        );
      },
    );
  }
}

class _AddButtons extends StatelessWidget {
  const _AddButtons({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: cubit,
      builder: (context, state) {
        final item = state.getOrderItem(product.id);
        if (item == null) {
          return FilledButton(
            onPressed: () {
              cubit.addItem(product);
            },
            child: Text('Добавить в корзину'),
          );
        } else {}
        return Row(
          spacing: 16,
          children: [
            CustomCounterButton(
              value: item.quantity,
              onFirstAdd: () {
                cubit.addItem(product);
              },
              onAdd: () {
                cubit.setItem(item.copyWith(item.quantity + 1));
              },
              onRemove: () {
                cubit.setItem(item.copyWith(item.quantity - 1));
              },
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              onPressed: () {
                AutoRouter.of(context).navigate(OrderRoute());
              },
              child: Row(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.arrow_forward), Text('В корзину')],
              ),
            ),
          ],
        );
      },
    );
  }
}
