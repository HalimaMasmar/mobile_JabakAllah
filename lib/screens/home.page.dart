import 'package:app_mobile/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController = Get.put(Service());
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    String hexColor = "#0d417d";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Home',
              style: TextStyle(
                color: color,
              )),
          actions: [
            /*
          IconButton(
            icon: Icon(Icons.),
            color: Colors.black,
            onPressed: () {
              // Ajoutez ici la logique de déconnexion
            },
          ),*/

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
          ]),
      /* floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: FloatingActionButton(
          //Floating action button on Scaffold
          onPressed: () {
            //Navigator.of(context).pushNamed('/cart');
          },
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.blueAccent,
              size: 33,
            ),
          ), //icon inside button
        ),
      ),*/

      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 20.0),
          Text(
            'Solde',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: color,
              ),
              title: Text(
                'Solde actuel',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Montant'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Ajoutez ici la logique pour afficher les détails du solde
              },
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Opérations',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.phone_android,
                color: color,
              ),
              title: Text(
                'Recharge',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Effectuer une recharge'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Ajoutez ici la logique pour effectuer une recharge
                Navigator.pushNamed(context, '/recharge');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.receipt,
                color: color,
              ),
              title: Text(
                'Paiement de factures',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Payer vos factures'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/facteur');
                // Ajoutez ici la logique pour payer les factures
              },
            ),
          ),
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    required Key key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.pinkAccent.withOpacity(0.4),
                  Colors.deepPurpleAccent.withOpacity(0.15),
                ]),
            color: Colors.white,
          ),
          width: size.width * 0.95,
          height: size.height * 0.23,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, right: 20, left: 8, bottom: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    image,
                    cacheWidth: 110,
                    cacheHeight: 110,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({
    required Key key,
    this.width = 140,
    this.aspectRection = 1.02,
    required this.isFavourite,
  }) : super(key: key);
  final double width, aspectRection;

  final bool isFavourite;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: size.width * 0.45,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.greenAccent.withOpacity(0.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 8, top: 10),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
