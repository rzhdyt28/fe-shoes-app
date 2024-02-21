import 'package:fe_shoes_market_app/models/auth/user_model.dart';
import 'package:fe_shoes_market_app/services/auth/auth_services.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  // UserModel? get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    try {
      UserModel user = await AuthServices().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      print('INI PESAN Berhasil PROVIDER: $_user');
      return true;
    } catch (e) {
      print('INI PESAN ERROR PROVIDER: $e');
      return false;
    }
  }

  // Login
  Future<bool> login({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    try {
      UserModel user = await AuthServices().login(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
