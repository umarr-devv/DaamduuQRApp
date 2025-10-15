import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingIndicator extends StatelessWidget {
  const CustomRatingIndicator({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RatingBarIndicator(
          rating: value,
          unratedColor: theme.custom.opacityForeground,
          itemBuilder: (context, index) =>
              Icon(Icons.star, color: theme.custom.yellow),
          itemCount: 5,
          itemSize: 20,
          direction: Axis.horizontal,
        ),
        Text(
          value.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: theme.custom.secondaryForeground,
          ),
        ),
      ],
    );
  }
}
