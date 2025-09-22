import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasketButton extends StatelessWidget {
  const BasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12, right: 8),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: theme.custom.primaryBackground,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: theme.custom.shadowColor,
                  offset: Offset(2, 2),
                  spreadRadius: 4,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Корзина',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.secondaryForeground,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/shopping-basket.svg',
                  height: 20,
                  width: 20,
                  colorFilter: ColorFilter.mode(
                    theme.custom.secondaryForeground,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -10,
            left: -10,
            child: Container(
              height: 28,
              constraints: BoxConstraints(minWidth: 28),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: theme.custom.primaryColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: theme.custom.shadowColor,
                    offset: Offset(1, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Text(
                '4',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
