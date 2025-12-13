import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final font = 'Manrope';

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get accent => Color(0xffe44641);

  Color get background => const Color(0xFFffffff);

  Color get foreground => const Color(0xff2a2a2a);

  Color get primary => Color(0xFF18181B);

  Color get onPrimary => Color(0xffffffff);

  Color get secondary => const Color(0xFFF5F5F6);

  Color get onSecondary => Color(0xff767676);

  Color get muted => Color(0xFFF4F4F5);

  Color get onMuted => Color(0xFF71717A);

  Color get destructive => Color(0xFFEF4444);

  Color get onDestructive => Color(0xFFFAFAFA);

  Color get error => Color(0xFFEF4444);

  Color get onError => Color(0xFFFAFAFA);

  Color get transparent => Color(0x00000000);

  Color get border => Color(0xFFE4E4E7);

  Color get barrier => Color(0x33000000);

  Color get black => Color(0xff000000);

  TextStyle get defaultTextStyle =>
      TextStyle(fontWeight: FontWeight.w500, color: foreground, fontSize: 14);

  TextStyle get secondaryTextStyle =>
      TextStyle(fontWeight: FontWeight.w400, color: onSecondary, fontSize: 14);

  TextStyle get primaryTextStyle =>
      TextStyle(fontWeight: FontWeight.w500, color: onPrimary, fontSize: 14);

  ThemeData toTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: primary,
      scaffoldBackgroundColor: background,
      fontFamily: font,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        error: error,
        onError: onError,
        surface: background,
        onSurface: foreground,
      ),
      dividerTheme: DividerThemeData(
        color: barrier,
        indent: 16,
        endIndent: 16,
        space: 12,
        thickness: 1,
      ),
    );
  }
}

extension ThemeExtension on ThemeData {
  CustomThemeData get custom => CustomThemeData(brightness: brightness);
}
