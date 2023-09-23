import 'package:flutter/material.dart';

class LightThem {
  static ThemeData light = ThemeData(
    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
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
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedIconTheme: IconThemeData(size: 30),
        selectedIconTheme: IconThemeData(size: 35, color: Colors.black),
        selectedItemColor: Colors.black),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      background: Color(0xFFB7935F),
      seedColor: Color(0xFFB7935F),
      primary: Color(0xFFB7935F),
      onPrimary: Color(0xFF000000),
      secondary: Color(0xFF000000),
      onSecondary: Color(0xFFFFFFFF),
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontFamily: 'ElMessiri-SemiBold',
          fontWeight: FontWeight.w600),
      labelLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'ElMessiri-SemiBold',
          fontWeight: FontWeight.w400),
      labelMedium: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'ElMessiri-SemiBold',
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: '',
          fontSize: 25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          color: Colors.black,
          fontFamily: '',
          fontSize: 20,
          fontWeight: FontWeight.normal),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
    useMaterial3: true,
  );
}
