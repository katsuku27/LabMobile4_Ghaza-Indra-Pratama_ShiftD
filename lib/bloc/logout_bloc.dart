import 'package:tokokita/helpers/user_info.dart';

class LogoutBloc {
  // Fungsi untuk melakukan logout
  static Future logout() async {
    // Menghapus semua data di shared preferences, termasuk token dan userID
    await UserInfo().logout();
  }
}
