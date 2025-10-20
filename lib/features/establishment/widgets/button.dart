import 'package:app/core/router/router.dart';
import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentButton extends StatelessWidget {
  const EstablishmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of<EstablishmentCubit>(context),
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: CustomTextButton(
            icon: 'assets/svg/menu-food.svg',
            label: 'Перейти в Меню',
            background: theme.custom.primaryColor,
            foreground: theme.custom.white,
            radius: 12,
            size: 24,
            fontSize: 16,
            shadow: true,
            onTap: () {
              AutoRouter.of(
                context,
              ).push(CatalogRoute(establishment: state.establishment));
            },
          ),
        );
      },
    );
  }
}
