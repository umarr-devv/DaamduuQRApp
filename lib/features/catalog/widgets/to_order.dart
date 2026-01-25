import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/features/catalog/bloc/bloc.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogToOrderButton extends StatelessWidget {
  const CatalogToOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<CatalogCubit, CatalogState>(
      bloc: BlocProvider.of<CatalogCubit>(context),
      builder: (context, state) {
        return BlocBuilder<OrderCubit, OrderState>(
          bloc: BlocProvider.of<OrderCubit>(context),
          builder: (context, orderState) {
            if (state.establishment.id == orderState.establishment?.id) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 12,
                    left: 16,
                    right: 16,
                    bottom: 4 + mediaQuery.padding.bottom,
                  ),
                  decoration: BoxDecoration(
                    color: theme.custom.background,
                    border: Border(top: BorderSide(color: theme.custom.border)),
                  ),
                  child: FilledButton(
                    onPressed: () {
                      AutoRouter.of(context).push(OrderRoute());
                    },
                    child: Text('В корзину'),
                  ),
                ),
              );
            } else {
              return SizedBox();
            }
          },
        );
      },
    );
  }
}
