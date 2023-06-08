import 'package:app_mobile/screens/facteur.page.dart';
import 'package:app_mobile/screens/home.page.dart';
import 'package:app_mobile/screens/login.page.dart';
import 'package:app_mobile/screens/profile.page.dart';
import 'package:app_mobile/screens/recharge.page.dart';
import 'package:app_mobile/screens/registration.dart';
import 'package:app_mobile/screens/setting.page.dart';
import 'package:app_mobile/screens/splash.Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.pinkAccent,
        disabledColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SplashPage(),
      getPages: [
        GetPage(name: "/splash", page: () => SplashPage()),
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/registration", page: () => RegistrationPage()),
        GetPage(name: "/profile", page: () => ProfilePage()),
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/setting", page: () => SettingPage()),
        GetPage(name: "/recharge", page: () => RechargePage()),
        GetPage(name: "/facteur", page: () => FacteurPage()),
      ],
    );
  }
}
