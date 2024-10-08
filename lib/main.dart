import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Thems/dark_them.dart';
import 'package:islami/Thems/light_them.dart';
import 'package:islami/home.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/tabs/hadeth/hadeth-screen.dart';
import 'package:islami/tabs/quran/swra_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SettingsProvider settingsProvider = SettingsProvider();
  await settingsProvider.setItems();
  runApp(ChangeNotifierProvider(
      create: (context) => settingsProvider, child: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =
        Provider.of<SettingsProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightThem.light,
      darkTheme: DarkThem.dark,
      themeMode: settingsProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.currentLang),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        SwraScreen.route: (context) => const SwraScreen(),
        HadethScreen.route: (context) => const HadethScreen()
      },
    );
  }
}
