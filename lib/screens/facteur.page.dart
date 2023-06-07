import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacteurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hexColor = "#ff9626";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text('Payement de vos facteurs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Text(
                  "Telephone et Internet ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Maroc_telecom_logo.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "IAM",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Action lorsque la Card est cliquée
                        // Ajoutez ici la logique pour afficher la liste de promos
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Logo_inwi.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "INWI",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Action lorsque la Card est cliquée
                        // Ajoutez ici la logique pour afficher la liste de promos
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Orange_logo.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "ORANGE",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Eau et Electricite ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Action lorsque la Card est cliquée
                        // Ajoutez ici la logique pour afficher la liste de promos
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/lydec.png",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "LYDEC",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Action lorsque la Card est cliquée
                        // Ajoutez ici la logique pour afficher la liste de promos
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ONEE-1.jpg",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "ONEE",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Redal.jpg",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "REDAL",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
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
