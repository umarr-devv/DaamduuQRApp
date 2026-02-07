import 'package:app/shared/icons/icons.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class CustomEstablishmentType extends StatelessWidget {
  const CustomEstablishmentType({
    super.key,
    required this.type,
    required this.color,
  });

  final EstablishmentType? type;
  final Color color;

  static (String, CustomIcons) getType(EstablishmentType? type) {
    switch (type) {
      case null:
        return ('Все', CustomIcons.list);
      case EstablishmentType.restaurant:
        return ('Рестораны', CustomIcons.restaurant);
      case EstablishmentType.fastFood:
        return ('Фастфуды', CustomIcons.hamburger_soda);
      case EstablishmentType.cafe:
        return ('Кафе', CustomIcons.mug_hot_alt);
      case EstablishmentType.confectionery:
        return ('Кондитерские', CustomIcons.croissant);
      case EstablishmentType.bar:
        return ('Бары', CustomIcons.glass_cheers);
      case EstablishmentType.coffeeShop:
        return ('Кофейни', CustomIcons.cup_straw_swoosh);
    }
  }

  @override
  Widget build(BuildContext context) {
    final (label, icon) = getType(type);
    return Row(
      spacing: 6,
      children: [
        icon(size: 16, color: color),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
