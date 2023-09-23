import 'package:flutter/material.dart';
import 'package:islami/Thems/dark_them.dart';
import 'package:islami/Thems/light_them.dart';
import 'package:islami/home.dart';
import 'package:islami/tabs/hadeth/hadeth-screen.dart';
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
      theme: LightThem.light,
      darkTheme: DarkThem.dark,
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        SwraScreen.route: (context) => const SwraScreen(),
        HadethScreen.route: (context) => const HadethScreen()
      },
    );
  }
}
