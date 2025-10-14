import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final font = 'Manrope';

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get primaryColor => Color(0xffe44641);

  Color get primaryBackground => const Color(0xFFffffff);

  Color get secondaryBackground => const Color(0xFFeeeff0);

  Color get primaryForeground => const Color(0xff2a2a2a);

  Color get secondaryForeground => Color(0xff767676);

  Color get success => Color(0xffa6d778);

  Color get info => Color(0xff6c6cf4);

  Color get warning => Color(0xfff44da0);

  Color get black => Color(0xff000000);

  Color get white => Color(0xffffffff);

  Color get transparent => Color(0x00000000);

  Color get opacityForeground => primaryForeground.withValues(alpha: 0.2);

  Color get opacityWhite => Color(0xffffffff).withValues(alpha: 0.75);
  
  Color get opacityBlack => black.withValues(alpha: 0.5);

  Color get splashColor => Color(0xffffffff).withValues(alpha: 0.125);

  Color get shadowColor => Color(0xff000000).withValues(alpha: 0.2);

  Color get shimmerBase => black.withValues(alpha: 0.1);

  Color get shimmerHighlight => black.withValues(alpha: 0.2);


  ThemeData toTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: primaryBackground,
      scaffoldBackgroundColor: secondaryBackground,
      fontFamily: font,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryBackground,
        surfaceTintColor: primaryBackground,
        iconTheme: IconThemeData(color: primaryForeground),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: primaryColor,
        primary: primaryBackground,
        onPrimary: primaryForeground,
        secondary: secondaryBackground,
        onSecondary: secondaryForeground,
        surface: secondaryBackground,
        onSurface: primaryForeground,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: font,
          color: primaryForeground,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          fontFamily: font,
          color: primaryForeground,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        titleSmall: TextStyle(
          fontFamily: font,
          color: primaryForeground,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}

extension ThemeExtension on ThemeData {
  CustomThemeData get custom => CustomThemeData(brightness: brightness);
}

final lightTheme = CustomThemeData(brightness: Brightness.light).toTheme();
final darkTheme = CustomThemeData(brightness: Brightness.dark).toTheme();
