import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final manrope = 'Manrope';
  final comfortaa = 'Comfortaa';
  final robotoMono = 'RobotoMono';

  String get font => manrope;
  String get monoFont => robotoMono;

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get background =>
      by(light: const Color(0xFFFFFFFF), dark: const Color(0xFF000000));

  Color get foreground =>
      by(light: const Color(0xFF2A2A2A), dark: const Color(0xFFFFFFFF));

  Color get primary =>
      by(light: const Color(0xFFE44641), dark: const Color(0xFFE44641));

  Color get onPrimary =>
      by(light: const Color(0xFFFFFFFF), dark: const Color(0xFFFFFFFF));

  Color get secondary =>
      by(light: const Color(0xFF18181B), dark: const Color(0xFFFFFFFF));

  Color get onSecondary =>
      by(light: const Color(0xFFFFFFFF), dark: const Color(0xFF000000));

  Color get muted =>
      by(light: const Color(0xFFF5F5F6), dark: const Color(0xFF1C1C1E));

  Color get onMuted =>
      by(light: const Color(0xFF5A5A5A), dark: const Color(0xFFB3B3B3));

  Color get barrier =>
      by(light: const Color(0x33000000), dark: const Color(0x66000000));

  Color get border =>
      by(light: const Color(0xFFE4E4E7), dark: const Color(0xFF2C2C2E));

  Color get black => const Color(0xFF000000);

  Color get white => const Color(0xFFffffff);

  Color get shadow => by(
    light: black.withValues(alpha: 0.05),
    dark: black.withValues(alpha: 0.4),
  );

  Color get success =>
      by(light: const Color(0xFF16A34A), dark: const Color(0xFF22C55E));

  Color get error =>
      by(light: const Color(0xFFDC2626), dark: const Color(0xFFEF4444));

  Color get info =>
      by(light: const Color(0xFF2563EB), dark: const Color(0xFF3B82F6));

  Color get transparent => const Color(0x00000000);

  TextStyle get label => TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: foreground,
  );

  TextStyle get title => TextStyle(
    fontFamily: font,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: foreground,
  );

  TextStyle get subtitle => TextStyle(
    fontFamily: font,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: onMuted,
  );

  TextStyle get text => TextStyle(
    fontFamily: font,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: onMuted,
  );

  TextStyle get price => TextStyle(
    fontFamily: monoFont,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: foreground,
  );

  ThemeData toTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: background,
      scaffoldBackgroundColor: background,
      fontFamily: font,
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: foreground,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        surface: background,
        onSurface: foreground,
        error: error,
        outline: border,
        secondaryContainer: muted,
        // onSecondaryContainer: foreground,
        // onSurfaceVariant: foreground,
      ),
      appBarTheme: AppBarThemeData(
        backgroundColor: background,
        surfaceTintColor: background,
        shadowColor: black.withValues(alpha: 0.125),
        elevation: 4,
        centerTitle: false,
        toolbarHeight: 64,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: foreground,
        ),
      ),
      bottomAppBarTheme: BottomAppBarThemeData(color: background),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(0),
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: onMuted,
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          backgroundColor: background,
          surfaceTintColor: transparent,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 16),
          iconColor: foreground,
          backgroundColor: muted,
          foregroundColor: foreground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          backgroundColor: secondary,
          iconSize: 24,
          iconColor: onSecondary,
          foregroundColor: onSecondary,
          textStyle: TextStyle(fontSize: 16, color: onSecondary),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: border, width: 1),
          ),
          foregroundColor: foreground,
          textStyle: TextStyle(fontSize: 16, color: foreground),
        ),
      ),
      cardTheme: CardThemeData(
        clipBehavior: Clip.antiAlias,
        color: background,
        shadowColor: black.withValues(alpha: 0.1),
        elevation: 4,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      dividerTheme: DividerThemeData(
        color: border,
        thickness: 1,
        indent: 32,
        endIndent: 32,
      ),
    );
  }
}

extension ThemeExtension on ThemeData {
  CustomThemeData get custom => CustomThemeData(brightness: brightness);
}

final lightTheme = CustomThemeData(brightness: Brightness.light).toTheme();
final darkTheme = CustomThemeData(brightness: Brightness.dark).toTheme();
