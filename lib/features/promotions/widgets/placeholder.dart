import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromotionPlaceholder extends StatelessWidget {
  const PromotionPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svg/ticket.svg',
            height: 128,
            width: 128,
            colorFilter: ColorFilter.mode(
              theme.custom.onMuted,
              BlendMode.srcIn,
            ),
          ),
          Text(
            'У вас пока нет промокодов',
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
