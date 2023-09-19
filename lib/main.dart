import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/tabs/quran/swra_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          onPrimary: Color(0xFF000000),
          secondary: Color(0xFFB7935F),
          onSecondary: Color(0xFFFFFFFF),
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        SwraScreen.route: (context) => const SwraScreen()
      },
    );
  }
}
