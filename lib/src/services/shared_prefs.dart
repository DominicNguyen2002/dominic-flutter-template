import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class _keys {
  static const String theme = 'app-theme';
  static const String safeArea = 'safe-area';
  static const String locale = 'locale';
}

class SharedPrefs {
  factory SharedPrefs() => instance;
  SharedPrefs._internal();

  static final SharedPrefs instance = SharedPrefs._internal();
  static SharedPrefs get I => instance;
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

   void reset() {
    setTheme(ThemeMode.system);
    setSafeArea(true);
    setLocale(const Locale('en'));
  }


  // theme
  ThemeMode getTheme() {
    final value = _prefs.getString(_keys.theme);
    return ThemeMode.values.firstWhere(
      (e) => e.toString().toLowerCase() == '$value'.toLowerCase(),
      orElse: () => ThemeMode.system,
    );
  }

  void setTheme(ThemeMode value) {
    _prefs.setString(_keys.theme, value.toString().toLowerCase());
  }

  // safe area
  bool getSafeArea() {
    final value = _prefs.getBool(_keys.safeArea);
    return value ?? true;
  }

  void setSafeArea(bool value) {
    _prefs.setBool(_keys.safeArea, value);
  }

  // locale
  Locale getLocale() {
    final value = _prefs.getString(_keys.locale) ?? 'en';
    return Locale(value);
  }

  void setLocale(Locale value) {
    _prefs.setString(_keys.locale, value.toString().toLowerCase());
  }
}
