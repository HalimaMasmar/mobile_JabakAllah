import 'package:app_mobile/screens/facteur.page.dart';
import 'package:app_mobile/screens/home.page.dart';
import 'package:app_mobile/screens/login.page.dart';
import 'package:app_mobile/screens/profile.page.dart';
import 'package:app_mobile/screens/recharge.page.dart';
import 'package:app_mobile/screens/registration.dart';
import 'package:app_mobile/screens/setting.page.dart';
import 'package:app_mobile/screens/splash.Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Theme.of(context).copyWith(
          unselectedWidgetColor: Colors.pinkAccent,
          disabledColor: Colors.pinkAccent,
        ),
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: SplashPage(),
        routes: {
          // ignore: prefer_const_constructors
          "/splash": (context) => SplashPage(),
          "/login": (context) => LoginPage(),
          "/registration": (context) => RegistrationPage(),
          "/profile": (context) => ProfilePage(),
          "/home": (context) => HomePage(),
          "/setting": (context) => SettingPage(),
          "/recharge": (context) => RechargePage(),
          "/facteur": (context) => FacteurPage(),
        });
  }
}
