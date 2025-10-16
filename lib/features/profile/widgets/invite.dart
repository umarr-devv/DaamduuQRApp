import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileInvite extends StatelessWidget {
  const ProfileInvite({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.custom.primaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 16,
        children: [
          Text(
            'Хотите, чтобы ваша компания тоже была в этом приложении?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: theme.custom.secondaryForeground,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: CustomTextButton(
              label: 'Подать заявку',
              shadow: false,
              radius: 12,
              fontSize: 15,
              background: theme.custom.primaryForeground,
              foreground: theme.custom.white,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
