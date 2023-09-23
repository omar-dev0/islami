import 'package:flutter/material.dart';

class DarkThem {
  static bool isDark = true;
  static ThemeData dark = ThemeData(
      cardTheme: CardTheme(
        color: Color(0xFF141A2E),
        shadowColor: Color(0xFF141A2E),
        margin: EdgeInsets.only(top: 30, bottom: 100, right: 20, left: 20),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontFamily: 'ElMessiri-SemiBold',
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(size: 30),
          selectedIconTheme: IconThemeData(size: 35, color: Color(0xFFFACC1D)),
          selectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF141A2E),
        primary: Color(0xFF141A2E),
        onPrimary: Color(0xFFFFFFFF),
        secondary: Color(0xFFFACC1D),
        onSecondary: Color(0xFF000000),
        background: Color(0xFFFACC1D),
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'ElMessiri-SemiBold',
            fontWeight: FontWeight.w600),
        labelLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'ElMessiri-SemiBold',
            fontWeight: FontWeight.w400),
        labelMedium: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'ElMessiri-SemiBold',
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            color: Colors.white,
            fontFamily: '',
            fontSize: 25,
            fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            color: Colors.white,
            fontFamily: '',
            fontSize: 20,
            fontWeight: FontWeight.normal),
      ),
      useMaterial3: true,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFF141A2E),
      ));
}
