import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/service.dart';

class ProfilePage extends StatelessWidget {
  final service = Get.put(Service());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(children: [
                Opacity(
                  opacity: 1,
                  child: ClipPath(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CustomPaint(
                        child: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 16, right: 0),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 110,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(width: 4),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("assets/profile.jpg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 55, left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Halima   Masmar",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, top: 8.0, right: 8, bottom: 8),
                                    child: Text(
                                      "halima@example.com",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, top: 8.0, right: 8, bottom: 8),
                                    child: Text(
                                      "RIB NO: EXMPL 4566",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        painter: CurvePainter(),
                      ),
                      height: size.height * 0.3,
                      width: size.width * 4,

                      /*child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top:0,left: 16,right:0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 4),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:AssetImage("images/profile.jpg"),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: size.height *0.02),
                        Padding(
                          padding: const EdgeInsets.only(top:55,left: 14),
                          child: Column(
                            children: [
                              Text("Kajavasta  Moon",style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(left:0,top:8.0,right:8,bottom:8),
                                child: Text("moon@example.com",style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:0,top:8.0,right:8,bottom:8),
                                child: Text("ID NO: EXMPL 4566",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),),
                              ),
                            ],
                          ),
                        ),




                      ],),*/
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 18, top: 30),
              child: Container(
                width: 500,
                height: 1,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 18, top: 25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 16),
                      child: Text(
                        "Setting",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 16, top: 10),
                      child: Container(
                        width: 500,
                        height: 170,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/setting');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(24, 50)),
                                    child: Row(children: [
                                      IconButton(
                                        onPressed: () {
                                          //Navigator.of(context)
                                          //.pushNamed('/setting');
                                        },
                                        icon: Icon(
                                          Icons.person,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        'Account Setting',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      //Navigator.of(context)
                                      // .pushNamed('/checkout');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(24, 50)),
                                    child: Row(children: [
                                      IconButton(
                                        onPressed: () {
                                          //Navigator.of(context)
                                          //.pushNamed('/checkout');
                                        },
                                        icon: Icon(
                                          Icons.history_outlined,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        'Historique de Transactions ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/home');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      minimumSize: Size(24, 50),
                                      elevation: 0,
                                    ),
                                    child: Row(children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/home');
                                        },
                                        icon: Icon(
                                          Icons.notifications_active,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        'Notification',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ])),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 18, top: 18),
              child: Container(
                width: 500,
                height: 1,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, left: 8, right: 8, bottom: 20),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        //Navigator.of(context).pushNamed('/splash');
                        await Service.logout();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        minimumSize: Size(24, 50),
                        elevation: 0,
                      ),
                      child: Row(children: [
                        IconButton(
                          onPressed: () {
                            //Navigator.of(context).pushNamed('/splash');
                          },
                          icon: Icon(
                            Icons.logout,
                            color: color,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 10, size.height / 4, size.width * 0.2, size.height * 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 3);
    path.quadraticBezierTo(
        size.width / 10, size.height / 4, size.width * 0.9, size.height * 3);
    path.quadraticBezierTo(size.width * 0.7, size.height * 0.8,
        size.width * 1.0, size.height * 0.78);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
