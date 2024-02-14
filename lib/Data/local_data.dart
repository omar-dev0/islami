import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  static setTheme(bool isDark) async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setBool('isDark', isDark);
  }

  static setLang(bool isArabic) async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setBool('isArabic', isArabic);
  }

  static Future<bool?> getTheme() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    return data.getBool('isDark');
  }

  static Future<bool?> getLang() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    return data.getBool('isArabic');
  }
}
