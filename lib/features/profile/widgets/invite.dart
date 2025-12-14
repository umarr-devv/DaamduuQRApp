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
        color: theme.custom.background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 16,
        children: [
          Text(
            'Хотите, чтобы ваша компания тоже была в этом приложении?',
            textAlign: TextAlign.center,
            style: theme.custom.labelTextStyle,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomTextButton(
              label: 'Подать заявку',
              shadow: false,
              radius: 12,
              fontSize: 15,
              background: theme.custom.foreground,
              foreground: theme.custom.background,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
