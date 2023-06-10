import 'package:flutter/material.dart';
/*

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
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
                    //controller: serviceLogin.emailController,
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "ancien mot de passe ",
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
                    //controller: serviceLogin.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "new password ",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
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
                     Service.(,
);
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
*/