import 'package:flutter/material.dart';

enum Themes {
  light,
  dark;

  ThemeData get theme => this == Themes.light ? lightTheme : darkTheme;
  Themes get next => this == Themes.light ? Themes.dark : Themes.light;
  String get name => this == Themes.light ? 'light' : 'dark';
}

final ThemeData lightTheme = ThemeData(
  fontFamily: 'OpenSans',
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.black,
    onPrimary: Color(0xFFE0E0E0),
    secondary: Colors.white,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.red,
    surface: Colors.white,
    onSurface: Colors.black,
    tertiary: Colors.white,
    onTertiary: Colors.black,
  ),
  cardTheme: const CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
      side: BorderSide.none,
    ),
    elevation: 5,
    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    clipBehavior: Clip.antiAlias,
  ),
);

final ThemeData darkTheme = ThemeData(
  fontFamily: 'OpenSans',
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: Color(0xFFE0E0E0),
    secondary: Color.fromARGB(255, 122, 122, 122),
    onSecondary: Color(0xFF1E1E1E),
    error: Color(0xFFCF6679),
    onError: Color(0xFF1E1E1E),
    surface: Color(0xFF1E1E1E),
    onSurface: Color(0xFFE0E0E0),
    tertiary: Color(0xFF03DAC6),
    onTertiary: Color(0xFF1E1E1E),
  ),
  cardTheme: CardThemeData(
    color: const Color(0xFF2C2C2C),
    shadowColor: Colors.black.withValues(alpha: 0.3),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
      side: BorderSide.none,
    ),
    elevation: 3,
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    clipBehavior: Clip.antiAlias,
  ),
  scaffoldBackgroundColor: const Color(0xFF121212),
  dividerColor: const Color(0xFF2C2C2C),
);
