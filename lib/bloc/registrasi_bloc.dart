import 'dart:convert';
import 'package:tokokita/helpers/api.dart';
import 'package:tokokita/helpers/api_url.dart';
import 'package:tokokita/model/registrasi.dart';

class RegistrasiBloc {
  // Fungsi untuk melakukan registrasi
  static Future<Registrasi> registrasi(
      {String? nama, String? email, String? password}) async {
    
    // Mengambil URL untuk registrasi dari ApiUrl
    String apiUrl = ApiUrl.registrasi;
    
    // Membuat body request berupa JSON berisi nama, email, dan password
    var body = {"nama": nama, "email": email, "password": password};
    
    // Mengirimkan request POST melalui class Api
    var response = await Api().post(apiUrl, body);
    
    // Meng-decode response JSON
    var jsonObj = json.decode(response.body);
    
    // Mengonversi JSON ke objek Registrasi
    return Registrasi.fromJson(jsonObj);
  }
}
