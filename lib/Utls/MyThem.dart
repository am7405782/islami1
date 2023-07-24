import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Color.dart';

class MyThemData {
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      primary: primaryColor,
      brightness: Brightness.light,
      onPrimary: Colors.black,
      secondary: Colors.grey.shade300,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white10,
      background: Colors.transparent,
      onBackground: Colors.transparent,
      onSurface: Colors.white10,
      surface: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheam = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      primary: primaryColordark,
      brightness: Brightness.dark,
      onPrimary: Colors.black,
      secondary: Colors.grey.shade300,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white10,
      background: Colors.transparent,
      onBackground: Colors.transparent,
      onSurface: Colors.white10,
      surface: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColordark,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      selectedItemColor: sceond,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
