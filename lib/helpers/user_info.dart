import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  // Menyimpan token ke SharedPreferences
  Future<void> setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("token", value);
  }

  // Mengambil token dari SharedPreferences
  Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("token");
  }

  // Menyimpan userID ke SharedPreferences
  Future<void> setUserID(int value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("userID", value);
  }

  // Mengambil userID dari SharedPreferences
  Future<int?> getUserID() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt("userID");
  }

  // Menghapus semua data dari SharedPreferences (logout)
  Future<void> logout() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
