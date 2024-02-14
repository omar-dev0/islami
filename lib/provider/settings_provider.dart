import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String sebhaPath = 'assets/images/sebha.png';
  String bgPath = 'assets/images/bglight.png';
  String currentLang = 'ar';

  void changeTheme(ThemeMode wantedTheme) {
    if (currentTheme == wantedTheme) {
      return;
    }
    currentTheme = wantedTheme;
    if (currentTheme == ThemeMode.dark) {
      sebhaPath = 'assets/images/sebha_dark.png';
      bgPath = 'assets/images/dark.png';
    } else {
      sebhaPath = 'assets/images/sebha_dark.png';
      bgPath = 'assets/images/bglight.png';
    }
    notifyListeners();
  }

  void changeLang(String wantedLang) {
    if (wantedLang == currentLang) {
      return;
    }
    currentLang = wantedLang;
    notifyListeners();
  }
}
