import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCurrencyText extends StatelessWidget {
  const CustomCurrencyText({super.key, required this.value});

  final num value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 2,
      children: [
        Text(
          NumberFormat.currency(symbol: '', decimalDigits: 0).format(value),
          style: TextStyle(
            fontFamily: theme.custom.comfortaa,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: theme.custom.foreground,
          ),
        ),
        CustomIcons.som(size: 14, color: theme.custom.onMuted),
      ],
    );
  }
}
