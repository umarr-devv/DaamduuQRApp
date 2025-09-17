import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EstablishmentTitle extends StatelessWidget {
  const EstablishmentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Вкусно и точка',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.primaryForeground,
                ),
              ),
              Text(
                'Улица Ленина, 75-здание 2 этаж',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: theme.custom.secondaryForeground,
                ),
              ),
            ],
          ),
          CustomIconButton(
            icon: Icons.directions,
            onTap: () {},
            background: theme.custom.primaryColor,
          ),
        ],
      ),
    );
  }
}
