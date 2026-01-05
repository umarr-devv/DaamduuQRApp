import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';

class FavoritePlaceholder extends StatelessWidget {
  const FavoritePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIcons.heart(size: 128, color: theme.custom.onMuted),
          Text(
            'У вас пока нет избранных заведений или позиций',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: theme.custom.onMuted,
            ),
          ),
        ],
      ),
    );
  }
}
