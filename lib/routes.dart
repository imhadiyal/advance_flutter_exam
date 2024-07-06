import 'package:exam_1/pages/home_page.dart';
import 'package:exam_1/pages/login_page.dart';
import 'package:exam_1/pages/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Routes {
  Routes._();
  static final Routes routes = Routes._();

  String signpage = '/';
  String loginPage = 'login_page';
  String homePage = 'home_page';
  Map<String, Widget Function(BuildContext)> routesmap = {
    // '/': (context) => const SignupPage(preferences: null, isLogin: null,),
    'login_page': (context) => const LoginPage(),
    'home_page': (context) => const HomePage(),
  };
}
