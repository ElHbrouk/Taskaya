import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesSingleton {
  static late SharedPreferences _instance;
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool({required String key, required bool value}) async {
    await _instance.setBool(key, value);
  }

  static getBool({required String key}) {
    return _instance.getBool(key) ?? false;
  }
}
