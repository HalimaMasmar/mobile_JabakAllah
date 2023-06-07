import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 14, bottom: 20),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14, bottom: 24, right: 14),
              child: Text(
                "Signup is simply dummy text of the printing and \ntypesetting industry.",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "demo",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.mail,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "demo@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: ".......",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: ".......",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.of(context).pushNamed('/home');
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 14, left: 14, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: color,
                    minimumSize: const Size(70, 70)),
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
