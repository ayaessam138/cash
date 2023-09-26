import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> cacheThemeindex(int themeindex) async {
    await sharedPreferences?.setInt("themeindex", themeindex);
  }

  getCachedThemeindex() {
    final themeindex = sharedPreferences?.getInt("themeindex");
    if (themeindex != null) {
      return themeindex;
    } else {
      return 0;
    }
  }
}
