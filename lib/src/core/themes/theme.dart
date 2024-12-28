import 'package:flutter/material.dart';
import 'package:quran/src/core/constants/colors.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black26,
      elevation: 1.5,
    ),
    scaffoldBackgroundColor: Color(0xFFeeeee4));
ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
      elevation: 1.5,
    ),
    scaffoldBackgroundColor: CustomColor.bgColor,
    appBarTheme: AppBarTheme(color: CustomColor.bgColor));
