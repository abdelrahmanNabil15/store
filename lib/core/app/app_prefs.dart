import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store/core/util/langauge_manager.dart';



const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_KEY_THEME = "PREFS_KEY_THEME";
const String PREFS_KEY_ON_BOARDING_SCREEN_VIEWED = "PREFS_KEY_ON_BOARDING_SCREEN_VIEWED";
const String PREFS_KEY_IS_USER_LOGGED_IN = "PREFS_KEY_IS_USER_LOGGED_IN";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);
  String kTheme = "theme";

  String getAppLanguage() {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // return default lang
      return LanguageType.ENGLISH.getValue();
    }
  }

  bool isEnglish() {
    return getAppLanguage() == LanguageType.ENGLISH.getValue();
  }

  Future<void> changeAppLanguage() async {
    String currentLang = getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      // set english
      _sharedPreferences.setString(PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
    } else {
      // set arabic
      _sharedPreferences.setString(PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
    }
  }

  Locale getLocal() {
    String currentLang = getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }
 bool isDark()  {

    return _sharedPreferences.getBool("is_dark") ?? false;
  }
  Future<void> setTheme(bool isDark) async {
    _sharedPreferences.setBool("is_dark", !isDark);
  }
  //OnBoarding
  // Future<void> setOnBoardingScreenViewed() async {
  //   _sharedPreferences.setBool(PREFS_KEY_ON_BOARDING_SCREEN_VIEWED, true);
  // }
  //
  // Future<bool> isOnBoardingScreenViewed() async {
  //   return _sharedPreferences.getBool(PREFS_KEY_ON_BOARDING_SCREEN_VIEWED) ?? false;
  // }
  //
  //Login
  Future<void> setUserLogged() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);

  }

  Future<bool> isUserLogged() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> cacheThemeIndex(int themeIndex) async {

    _sharedPreferences.setInt("THEME_INDEX", themeIndex);
  }

  Future<int> getCachedThemeIndex() async {

    final cachedThemeIndex = _sharedPreferences.getInt("THEME_INDEX");
    if (cachedThemeIndex != null) {
      return cachedThemeIndex;
    } else {
      return 0;
    }
  }
  String get theme => _sharedPreferences.getString(kTheme) ?? ActiveTheme.system.name;
  // //register
  //
  //
  // Future<void> logout() async {
  //   _sharedPreferences.remove(PREFS_KEY_IS_USER_LOGGED_IN);
  // }
}
enum ActiveTheme {
  light(ThemeMode.light),
  dark(ThemeMode.dark),
  system(ThemeMode.system);

  final ThemeMode mode;

  const ActiveTheme(this.mode);
}
