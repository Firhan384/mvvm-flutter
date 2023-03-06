import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  SharedPreferences ?_prefs;

  // Initialize shared_preferences
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Write data to local storage
  Future<void> writeData(String key, dynamic value) async {
    // ignore: unnecessary_null_comparison
    if (_prefs == null) await init();
    if (value is String) {
      await _prefs?.setString(key, value);
    } else if (value is int) {
      await _prefs?.setInt(key, value);
    } else if (value is double) {
      await _prefs?.setDouble(key, value);
    } else if (value is bool) {
      await _prefs?.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs?.setStringList(key, value);
    } else {
      throw Exception('Invalid value type');
    }
  }

  // Read data from local storage
  dynamic readData(String key) {
    // ignore: unnecessary_null_comparison
    if (_prefs == null) return null;
    return _prefs?.get(key);
  }
}
