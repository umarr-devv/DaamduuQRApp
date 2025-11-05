import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final font = 'Manrope';

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get primary => Color(0xffe44641);

  Color get primaryBg => const Color(0xFFffffff);

  Color get secondaryBg => const Color(0xFFF5F5F6);

  Color get primaryFg => const Color(0xff2a2a2a);

  Color get secondaryFg => Color(0xff767676);

  Color get black => Color(0xff000000);

  Color get white => Color(0xffffffff);

  Color get green => Color(0xff48a357);

  Color get blue => Color(0xff0d6efd);

  Color get orange => Color(0xFFfd7e14);

  Color get yellow => Color(0xffffc107);

  Color get transparent => Color(0x00000000);

  Color get opacityOrange => orange.withValues(alpha: 0.175);

  Color get opacityFg => primaryFg.withValues(alpha: 0.2);

  Color get opacityBorder => primaryFg.withValues(alpha: 0.1);

  Color get opacityWhite => Color(0xffffffff).withValues(alpha: 0.75);

  Color get opacityBlack => black.withValues(alpha: 0.5);

  Color get splashColor => Color(0xffffffff).withValues(alpha: 0.125);

  Color get shadowColor => Color(0xff000000).withValues(alpha: 0.05);

  Color get highShadowColor => Color(0xff000000).withValues(alpha: 0.175);

  Color get veryHighShadowColor => Color(0xff000000).withValues(alpha: 0.5);

  Color get shimmerBase => black.withValues(alpha: 0.1);

  Color get shimmerHighlight => black.withValues(alpha: 0.2);

  List<BoxShadow> get boxShadow => [
    BoxShadow(
      color: shadowColor,
      offset: Offset(2, 2),
      blurRadius: 8,
      spreadRadius: -2,
    ),
  ];

  TextStyle get titleLarge =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: primaryFg);

  TextStyle get labelVeryLarge =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: primaryFg);

  TextStyle get labelLarge =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primaryFg);

  TextStyle get labelLargeAlt =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: secondaryFg);

  TextStyle get labelMedium =>
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: primaryFg);

  TextStyle get labelMediumAlt =>
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: secondaryFg);

  TextStyle get labelSmall =>
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: primaryFg);

  TextStyle get labelSmallAlt =>
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: secondaryFg);

  ThemeData toTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: primaryBg,
      scaffoldBackgroundColor: secondaryBg,
      fontFamily: font,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryBg,
        surfaceTintColor: primaryBg,
        iconTheme: IconThemeData(color: primaryFg),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryBg,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: primary,
        primary: primaryBg,
        onPrimary: primaryFg,
        secondary: secondaryBg,
        onSecondary: secondaryFg,
        surface: secondaryBg,
        onSurface: primaryFg,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: font,
          color: primaryFg,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          fontFamily: font,
          color: primaryFg,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        titleSmall: TextStyle(
          fontFamily: font,
          color: primaryFg,
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
