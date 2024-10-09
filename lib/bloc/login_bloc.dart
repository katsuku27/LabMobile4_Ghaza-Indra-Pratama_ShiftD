import 'dart:convert';
import 'package:tokokita/helpers/api.dart';
import 'package:tokokita/helpers/api_url.dart';
import 'package:tokokita/model/login.dart';

class LoginBloc {
  // Fungsi untuk melakukan login
  static Future<Login> login({String? email, String? password}) async {
    // Mengambil URL untuk login dari ApiUrl
    String apiUrl = ApiUrl.login;

    // Membuat body request berupa JSON berisi email dan password
    var body = {"email": email, "password": password};

    // Mengirimkan request POST melalui class Api
    var response = await Api().post(apiUrl, body);

    // Meng-decode response JSON
    var jsonObj = json.decode(response.body);

    // Mengonversi JSON ke objek Login
    return Login.fromJson(jsonObj);
  }
}
