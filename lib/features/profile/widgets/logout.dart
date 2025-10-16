import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileLogout extends StatelessWidget {
  const ProfileLogout({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: CustomTextButton(
        icon: Icons.logout,
        radius: 12,
        foreground: theme.custom.warning,
        shadow: false,
        label: 'Выйти',
        onTap: () {},
      ),
    );
  }
}
