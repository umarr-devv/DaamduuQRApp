import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EstablishmentButton extends StatelessWidget {
  const EstablishmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
        onTap: () {},
      ),
    );
  }
}
