import 'package:shared_preferences/shared_preferences.dart';

class LanguageCacheHelper {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> cacheLanguageCode(String languageCode) async {
    // final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences?.setString("LOCALE", languageCode);
  }

  getCachedLanguageCode() async {
    final cachedLanguageCode = sharedPreferences?.getString("LOCALE");
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return "en";
    }
  }
}
