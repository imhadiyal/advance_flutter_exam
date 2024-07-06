import 'package:exam_1/pages/login_page.dart';
import 'package:exam_1/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.sharedPreferences,
    required this.isLogin,
  });
  final SharedPreferences sharedPreferences;
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin
          ? const LoginPage()
          : SignupPage(
              preferences: sharedPreferences,
              isLogin: isLogin,
            ),
    );
  }
}
