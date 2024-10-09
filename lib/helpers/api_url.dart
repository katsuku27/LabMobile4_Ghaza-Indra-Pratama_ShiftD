class ApiUrl {
  static const String baseUrl = 'http://192.168.1.18:8080';

  // Endpoint untuk registrasi dan login
  static const String registrasi = baseUrl + '/registrasi';
  static const String login = baseUrl + '/login';

  // Endpoint untuk produk (Create & Read)
  static const String listProduk = baseUrl + '/produk';
  static const String createProduk = baseUrl + '/produk';

  // Endpoint untuk produk (Update by ID)
  static String updateProduk(int id) {
    return baseUrl + '/produk/' + id.toString();
  }

  // Endpoint untuk produk (Show by ID)
  static String showProduk(int id) {
    return baseUrl + '/produk/' + id.toString();
  }

  // Endpoint untuk produk (Delete by ID)
  static String deleteProduk(int id) {
    return baseUrl + '/produk/' + id.toString();
  }
}
