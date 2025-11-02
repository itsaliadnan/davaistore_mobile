import 'package:davaistore_mobile/localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});

  void setThemeMode(ThemeMode themeMode) {
    sharedPreferences.setString(StorageKeys.themeMode, themeMode.name);
  }

  ThemeMode getThemeMode() {
    final result = sharedPreferences.getString(StorageKeys.themeMode);
    debugPrint('Theme from storage: $result');
    switch (result) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  Future<void> setLocale(String languageCode) async {
    await sharedPreferences.setString(StorageKeys.locale, languageCode);
  }

  AppLocale get getLocale {
    final String languageCode =
        sharedPreferences.getString(StorageKeys.locale) ??
        StorageKeys.arabicLocale;
    return languageCode == StorageKeys.arabicLocale
        ? AppLocale.ar
        : AppLocale.en;
  }

  // Future<void> saveLoginResponse(LoginResponse loginResponse) async {
  //   await sharedPreferences.setString(
  //     StorageKeys.loginResponse,
  //     jsonEncode(loginResponse.toJson()),
  //   );
  // }

  // LoginResponse? getLoginResponse() {
  //   final res = sharedPreferences.getString(StorageKeys.loginResponse);

  //   return res != null ? LoginResponse.fromJson(jsonDecode(res)) : null;
  // }

  // Future<void> clearLoginResponse() async {
  //   await sharedPreferences.remove(StorageKeys.loginResponse);
  // }

  // bool isLoggedIn() {
  //   return sharedPreferences.containsKey(StorageKeys.loginResponse);
  // }

  // getMyProfile() {}
}

class StorageKeys {
  static const String locale = "locale";
  static const String arabicLocale = "ar";
  static const String themeMode = "themeMode";

  static const String loginResponse = "login_response";
}
