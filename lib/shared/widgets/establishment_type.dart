import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomEstablishmentType extends StatelessWidget {
  const CustomEstablishmentType({
    super.key,
    required this.type,
    required this.color,
  });

  final EstablishmentType? type;
  final Color color;

  (String, String) getType() {
    switch (type) {
      case null:
        return ('assets/svg/list.svg', 'Все');
      case EstablishmentType.restaurant:
        return ('assets/svg/restaurant.svg', 'Рестораны');
      case EstablishmentType.fastFood:
        return ('assets/svg/hamburger-soda.svg', 'Фастфуды');
      case EstablishmentType.cafe:
        return ('assets/svg/mug-hot-alt.svg', 'Кафе');
      case EstablishmentType.confectionery:
        return ('assets/svg/croissant.svg', 'Кондитерские');
      case EstablishmentType.bar:
        return ('assets/svg/glass-cheers.svg', 'Бары');
      case EstablishmentType.coffeeShop:
        return ('assets/svg/cup-straw-swoosh.svg', 'Кофейни');
    }
  }

  @override
  Widget build(BuildContext context) {
    final (icon, label) = getType();
    return Row(
      spacing: 6,
      children: [
        SvgPicture.asset(
          icon,
          height: 16,
          width: 16,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }
}
