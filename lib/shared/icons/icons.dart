import 'dart:ui';

import 'package:flutter_svg/svg.dart';

// ignore_for_file: constant_identifier_names
enum CustomIcons {
  icon,
  icon_bg,
  house,
  house_fill,
  heart,
  heart_fill,
  user,
  user_fill,
  qr,
  search,
  croissant,
  cup_straw_swoosh,
  french_fries,
  glass_cheers,
  hamburger_soda,
  mug_hot_alt,
  restaurant,
  instagram,
  mail,
  phone,
  telegram,
  whatsapp,
  time_past,
  shield_check,
  interrogation,
  comment_info,
  som,
  menu_food,
  google,
  apple,
  ticket,
  ticket_fill,
  receipt,
  list,
  map_marker,
  logo_light,
  logo_dark;

  String get assetName => '$name.svg';

  final iconsPath = 'assets/svg';

  SvgPicture call({double size = 24, Color? color}) {
    return SvgPicture.asset(
      '$iconsPath/$assetName',
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
    );
  }
}
