import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class EstablishmentTitle extends StatelessWidget {
  const EstablishmentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Text(
        'Блаженство & Ты',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: theme.custom.primaryForeground,
        ),
      ),
    );
  }
}
