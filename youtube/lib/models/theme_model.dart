import 'package:flutter/material.dart';
import 'package:youtube/preferences/theme_preferences.dart';

class ThemeModel extends ChangeNotifier {
  late bool _isDark;
  late ThemePreferences _preferences;
  
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  set isDarkTheme(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences(){
    _preferences.getTheme().then((value){
      _isDark = value; 
      notifyListeners();
    }
    );
  }
}