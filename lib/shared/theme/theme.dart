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
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: foreground,
  );

  TextStyle get secondaryTextStyle => TextStyle(
    fontFamily: font,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: onSecondary,
  );

  TextStyle get priceTextStyle => TextStyle(
    fontFamily: font,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: foreground,
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
        seedColor: primary,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        surface: secondary,
        onSurface: foreground,
      ),
      appBarTheme: AppBarThemeData(
        backgroundColor: background,
        surfaceTintColor: transparent,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: primary,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(0),
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: onSecondary,
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      cardTheme: CardThemeData(
        clipBehavior: Clip.antiAlias,
        color: background,
        shadowColor: black.withValues(alpha: 0.1),
        elevation: 4,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}

extension ThemeExtension on ThemeData {
  CustomThemeData get custom => CustomThemeData(brightness: brightness);
}
