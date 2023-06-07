import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Setting',
            style: TextStyle(
              color: color,
            )),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, bottom: 8),
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            color: Colors.white,
            textColor: color,
            child: Icon(
              Icons.logout,
              size: 24,
            ),
            padding: EdgeInsets.all(8),
            shape: CircleBorder(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
            child: InkWell(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 10, top: 22),
              child: ClipPath(
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 4,
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
                                      image: AssetImage("assets/profile.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        minimumSize: Size(24, 50),
                                        elevation: 0,
                                      ),
                                      onPressed: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 70),
                                        child: Icon(
                                          Icons.camera_alt_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(top: 55, left: 20),
                          child: Column(
                            children: [
                              Text(
                                "Halima Masmar ",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 8.0, right: 8, bottom: 8),
                                child: Text(
                                  "moon@example.com",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 8.0, right: 8, bottom: 8),
                                child: Text(
                                  "ID NO: EXMPL 4566",
                                  style: TextStyle(
                                    fontSize: 18,
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
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "Phone",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "Gender",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
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
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white,

        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            6.0, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: color,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                //Text("Home")
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 27, bottom: 13, top: 13),

              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: color,
                  size: 30,
                ),
                onPressed: () {
                  //Navigator.of(context).pushNamed('/wishlist');
                },
              ),
              //Text("Favouris")
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 14, left: 47, bottom: 13, top: 13),
              child: IconButton(
                icon: Icon(
                  Icons.location_searching_sharp,
                  color: color,
                  size: 30,
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed('/order');
                },
              ),
              //Text("Geocalisation")
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, bottom: 13, top: 13),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: color,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/setting');
                },
              ),
              // Text("Parametres")
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
