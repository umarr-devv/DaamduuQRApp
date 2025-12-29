import 'package:app/shared/theme/theme.dart';
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
        spacing: 12,
        children: [
          Text(
            'Хотите, чтобы ваша компания тоже была в этом приложении?',
            textAlign: TextAlign.center,
            style: theme.custom.subtitle,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              child: Text('Подать заявку'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
