import 'package:app_mobile/screens/registration.dart';
import 'package:app_mobile/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Service serviceLogin = Get.put(Service());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 16, top: 100, bottom: 3),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.06,
                child: const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 66, top: 20, right: 16, bottom: 8),
              child: Text(
                "login with your account to continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 70, left: 14, right: 20, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: serviceLogin.emailController,
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "demo@gmail.com",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 70, left: 14, right: 20, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: serviceLogin.passwordController,
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "demo@gmail.com",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),

            // password
            /*
            Padding(
              padding:
                  const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: serviceLogin.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "password",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/registration');
                      },
                      child: const Text(
                        'Create now',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: color,
                      minimumSize: Size(70, 70)),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //Navigator.of(context).pushNamed('/home');
                    Service.login(serviceLogin.emailController,
                        serviceLogin.passwordController);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
