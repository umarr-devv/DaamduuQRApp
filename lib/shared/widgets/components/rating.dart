import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class RatingButton extends StatelessWidget {
  const RatingButton({super.key, required this.rating, this.shadow = true});

  final double rating;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
          color: theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(64),
          boxShadow: shadow ? theme.custom.boxShadow : null,
        ),
        child: Row(
          spacing: 4,
          children: [
            Icon(Icons.star_rounded, color: theme.custom.yellow),
            Text(
              rating.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: theme.custom.primaryForeground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
