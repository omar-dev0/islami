import 'package:flutter/material.dart';

import '../Data/local_data.dart';

class SettingsProvider extends ChangeNotifier {
  late ThemeMode currentTheme;
  late String sebhaPath;
  late String bgPath;
  late String currentLang;

  setItems() async {
    if (await isDark()) {
      currentTheme = ThemeMode.dark;
      sebhaPath = 'assets/images/sebha_dark.png';
      bgPath = 'assets/images/dark.png';
    } else {
      currentTheme = ThemeMode.light;
      sebhaPath = 'assets/images/sebha.png';
      bgPath = 'assets/images/bglight.png';
    }
    if (await isArabic()) {
      currentLang = 'ar';
    } else {
      currentLang = 'en';
    }
  }

  void changeTheme(ThemeMode wantedTheme) {
    if (currentTheme == wantedTheme) {
      return;
    }
    currentTheme = wantedTheme;
    if (currentTheme == ThemeMode.dark) {
      sebhaPath = 'assets/images/sebha_dark.png';
      bgPath = 'assets/images/dark.png';
      LocalData.setTheme(true);
    } else {
      sebhaPath = 'assets/images/sebha_dark.png';
      bgPath = 'assets/images/bglight.png';
      LocalData.setTheme(false);
    }
    notifyListeners();
  }

  void changeLang(String wantedLang) {
    if (wantedLang == currentLang) {
      return;
    }
    currentLang = wantedLang;
    if (currentLang == 'ar') {
      LocalData.setLang(true);
    } else {
      LocalData.setLang(false);
    }
    notifyListeners();
  }

  Future<bool> isDark() async {
    bool theme = await LocalData.getTheme() ?? false;
    return theme;
  }

  Future<bool> isArabic() async {
    bool lang = await LocalData.getLang() ?? false;
    return lang;
  }
}
