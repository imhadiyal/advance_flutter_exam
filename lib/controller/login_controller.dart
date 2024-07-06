import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modals/login_modal.dart';

class LoginController extends GetxController {
  LoginController({required this.preferences, required bool isLogin}) {
    this.isLogin(isLogin);
  }
  User user = User(username: '', password: '');

  RxBool isLogin = false.obs;
  final SharedPreferences preferences;
  void login({required User user}) {
    this.user == user
        ? preferences.setBool('isLogin', true)
        : preferences.setBool('isLogin', false);
  }

  void signup({required User user}) {
    this.user == user;
  }
}
