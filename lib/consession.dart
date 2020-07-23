library consession;

import 'package:shared_preferences/shared_preferences.dart';

class Consession {
  Map _session = {};

  SharedPreferences prefs;

  Future _initSharedPrefs() async {
    this.prefs = await SharedPreferences.getInstance();
  }

  Future get(key) async {
    await _initSharedPrefs();
    return this.prefs.get(key);
  }

  Future set(key, value) async {
    await _initSharedPrefs();

    switch (value.runtimeType) {
      case String:
        {
          this.prefs.setString(key, value);
        }
        break;

      case int:
        {
          this.prefs.setInt(key, value);
        }
        break;

      case bool:
        {
          this.prefs.setBool(key, value);
        }
        break;

      case double:
        {
          this.prefs.setDouble(key, value);
        }
        break;

      case List:
        {
          this.prefs.setStringList(key, value);
        }
        break;
    }

    this._session.putIfAbsent(key, () => value);
  }
}
