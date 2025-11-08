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
              color: theme.custom.primaryBg,
              border: Border(
                top: BorderSide(color: theme.custom.opacityBorder, width: 1),
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
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<OrderCubit>(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: cubit,
      builder: (context, state) {
        final item = state.getOrderItem(product.id);
        return Row(
          spacing: 16,
          children: [
            CustomIconButton(
              icon: Icons.delete,
              radius: 12,
              background: theme.custom.secondaryBg,
              shadow: false,
              shadowColor: theme.custom.veryHighShadowColor,
              active: item != null,
              onTap: () {
                cubit.setItem(item?.copyWith(0));
              },
            ),
            CustomCounterButton(
              value: item?.quantity,
              onFirstAdd: () {
                cubit.addItem(product);
              },
              onAdd: () {
                cubit.setItem(item?.copyWith(item.quantity + 1));
              },
              onRemove: () {
                cubit.setItem(item?.copyWith(item.quantity - 1));
              },
            ),
            Expanded(child: SizedBox()),
            Builder(
              builder: (context) {
                if (item != null) {
                  return CustomTextButton(
                    icon: Icons.arrow_forward,
                    label: 'В корзину',
                    fontSize: 16,
                    shadow: false,
                    radius: 12,
                    background: theme.custom.secondaryBg,
                    onTap: () {
                      AutoRouter.of(context).push(OrderRoute(isInMenu: false));
                    },
                  );
                } else {
                  return CustomTextButton(
                    icon: Icons.add,
                    label: 'Добавить',
                    fontSize: 16,
                    shadow: false,
                    radius: 12,
                    background: theme.custom.primary,
                    foreground: theme.custom.white,
                    onTap: () {
                      cubit.addItem(product);
                    },
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
