import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const prefKey = "darkTheme";

  setTheme(bool value) {
    SharedPreferences.getInstance().then((pref) => pref.setBool(prefKey, value));
  }

  Future<bool> getTheme() {
    return SharedPreferences.getInstance().then((pref) => pref.getBool(prefKey) ?? false);
  }
}