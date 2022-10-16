import 'package:base_clean/presentation/base/resources/language_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageKey {
  static const prefsEmail = 'PREFS_EMAIL';
  static const prefsKeyLang = "PREFS_KEY_LANG";
}

@singleton
class AppPreferences {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage _flutterSecureStorage;

  AppPreferences(this._sharedPreferences, this._flutterSecureStorage);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(StorageKey.prefsKeyLang);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.vietnam.getValue();
    }
  }

  saveEmail(String email) async {
    await _flutterSecureStorage.write(key: StorageKey.prefsEmail, value: email);
  }

  removeEmail() async {
    await _flutterSecureStorage.delete(key: StorageKey.prefsEmail);
  }

  Future getEmail() async {
    return await _flutterSecureStorage.read(key: StorageKey.prefsEmail);
  }
}
