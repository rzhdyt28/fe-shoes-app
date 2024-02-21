import 'dart:convert';

import 'package:fe_shoes_market_app/models/auth/user_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static const String baseURL = 'http://192.168.0.110';

  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var url = Uri.parse('$baseURL/api/auth/daftar');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print([
      'INI PESAN BERHASIL RESPONSE \n',
      response.statusCode,
      response.body,
    ]);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return data;
    } else {
      print([
        'INI PESAN ERROR RESPONSE \n',
        response.statusCode,
        response.body,
      ]);
      throw Exception('Gagal Register');
    }
  }

  // Login
  Future<UserModel> login({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var url = Uri.parse('$baseURL/api/auth/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
