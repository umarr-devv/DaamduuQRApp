import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final font = 'Manrope';

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get accent => Color(0xffe44641);

  Color get primary => Color(0xFF18181B);

  Color get onPrimary => Color(0xffffffff);

  Color get background => const Color(0xFFffffff);

  Color get foreground => const Color(0xff2a2a2a);

  Color get secondary => const Color(0xFFF5F5F6);

  Color get onSecondary => Color(0xff767676);

  Color get barrier => Color(0x33000000);

  Color get border => Color(0xFFE4E4E7);

  Color get black => Color(0xff000000);

  Color get shadow => black.withValues(alpha: 0.05);

  Color get muted => Color(0xFFC8C8C8);

  Color get transparent => Color(0x00000000);

  TextStyle get labelTextStyle => TextStyle(
    fontFamily: font,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: foreground,
  );

  TextStyle get secondaryTextStyle => TextStyle(
    fontFamily: font,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: onSecondary,
  );

  ThemeData toTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: background,
      scaffoldBackgroundColor: secondary,
      fontFamily: font,
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: accent,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        surface: secondary,
        onSurface: foreground,
      ),
    );
  }
}

extension ThemeExtension on ThemeData {
  CustomThemeData get custom => CustomThemeData(brightness: brightness);
}

final lightTheme = CustomThemeData(brightness: Brightness.light).toTheme();
final darkTheme = CustomThemeData(brightness: Brightness.dark).toTheme();
