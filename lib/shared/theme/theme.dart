import 'package:flutter/material.dart';

class CustomThemeData {
  CustomThemeData({required this.brightness});

  final Brightness brightness;

  final font = 'Manrope';

  Color by({required Color light, required Color dark}) {
    return brightness == Brightness.light ? light : dark;
  }

  Color get background => const Color(0xFFffffff);

  Color get foreground => const Color(0xff2a2a2a);

  Color get primary => Color(0xffe44641);

  Color get onPrimary => Color(0xffffffff);

  Color get secondary => const Color(0xFF18181B);

  Color get onSecondary => Color(0xffffffff);

  Color get muted => Color(0xFFF5F5F6);

  Color get onMuted => Color(0xFF5A5A5A);

  Color get barrier => Color(0x33000000);

  Color get border => Color(0xFFE4E4E7);

  Color get black => Color(0xff000000);

  Color get shadow => black.withValues(alpha: 0.05);

  Color get success => Color(0xff16a34a);

  Color get error => Color(0xffdc2626);

  Color get info => Color(0xff2563eb);

  Color get transparent => Color(0x00000000);

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
      scaffoldBackgroundColor: muted,
      fontFamily: font,
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: primary,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        surface: background,
        onSurface: foreground,
        error: error,
        outline: border,
        secondaryContainer: muted,
        onSecondaryContainer: foreground,
      ),
      appBarTheme: AppBarThemeData(
        backgroundColor: muted,
        surfaceTintColor: background,
        shadowColor: black.withValues(alpha: 0.125),
        elevation: 4,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
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
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          backgroundColor: secondary,
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: onSecondary,
          ),
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
