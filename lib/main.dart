import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isLogin = preferences.getBool('isLogin') ?? false;
  runApp(
    MyApp(
      sharedPreferences: preferences,
      isLogin: isLogin,
    ),
  );
}
