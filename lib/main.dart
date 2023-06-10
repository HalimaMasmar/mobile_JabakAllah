import 'package:app_mobile/screens/facteur.page.dart';
import 'package:app_mobile/screens/home.page.dart';
import 'package:app_mobile/screens/login.page.dart';
import 'package:app_mobile/screens/profile.page.dart';
import 'package:app_mobile/screens/recharge.page.dart';
import 'package:app_mobile/screens/registration.dart';
import 'package:app_mobile/screens/setting.page.dart';
import 'package:app_mobile/screens/splash.Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.pinkAccent,
        disabledColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: false,

      home: SplashPage(),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/registration', page: () => RegistrationPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/setting', page: () => SettingPage()),
        GetPage(name: '/recharge', page: () => RechargePage()),
        GetPage(name: '/facteur', page: () => FacteurPage()),
      ],
      // home: SplashPage(),
      /*routes: {
          // ignore: prefer_const_constructors
          "/splash": (context) => SplashPage(),
          "/login": (context) => LoginPage(),
          "/registration": (context) => RegistrationPage(),
          "/profile": (context) => ProfilePage(),
          "/home": (context) => HomePage(),
          "/setting": (context) => SettingPage(),
          "/recharge": (context) => RechargePage(),
          "/facteur": (context) => FacteurPage(),
        }*/
    );
  }
}
