import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class FavoriteEmpty extends StatelessWidget {
  const FavoriteEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.heart_broken,
            size: 128,
            color: theme.custom.secondaryForeground,
          ),
          Text(
            'У вас пока нет избранных\n заведений или позиций',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: theme.custom.secondaryForeground,
            ),
          ),
        ],
      ),
    );
  }
}
