import 'package:app/core/router/router.dart';
import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToMenuButton extends StatelessWidget {
  const ToMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of<EstablishmentCubit>(context),
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
            ),
            child: SizedBox(
              height: 48,
              child: CustomTextButton(
                icon: 'assets/svg/menu-food.svg',
                label: 'Меню',
                background: theme.custom.primary,
                foreground: theme.custom.background,
                radius: 12,
                size: 20,
                fontSize: 18,
                shadow: false,
                onTap: () {
                  AutoRouter.of(
                    context,
                  ).push(CatalogRoute(establishment: state.establishment));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
