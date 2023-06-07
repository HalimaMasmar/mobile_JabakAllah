import 'package:flutter/material.dart';

class RechargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "Effectuer un Recharge";
    String image = "assets/profile.jpg";
    String imageTitle = "Titre de l'image";
    var size = MediaQuery.of(context).size;
    String hexColor = "#0ea293";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    String hexColor2 = "#ff9626";
    Color color2 =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color,
        title: Text('ACHAT DE RECHARGES'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0),
                Text(
                  "Choisir votre operateur ",
                  style: TextStyle(
                    fontSize: 24,
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String phoneNumber = '';
                            String amount = '';

                            return AlertDialog(
                              backgroundColor: Colors.blue[50],
                              title: Text("Recharge IAM"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      phoneNumber = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Numéro de téléphone",
                                    ),
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      amount = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Montant à recharger",
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Logique pour valider la recharge
                                    // Utilisez les valeurs de phoneNumber et amount
                                    //Navigator.pop(
                                    //  context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Valider"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Annuler"),
                                ),
                              ],
                            );
                          },
                        );
                      },
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

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String phoneNumber = '';
                            String amount = '';

                            return AlertDialog(
                              backgroundColor: Colors.blue[50],
                              title: Text("Recharge INWI"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      phoneNumber = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Numéro de téléphone",
                                    ),
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      amount = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Montant à recharger",
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Logique pour valider la recharge
                                    // Utilisez les valeurs de phoneNumber et amount
                                    //Navigator.pop(
                                    //  context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Valider"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Annuler"),
                                ),
                              ],
                            );
                          },
                        );
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

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String phoneNumber = '';
                            String amount = '';

                            return AlertDialog(
                              backgroundColor: Colors.blue[50],
                              title: Text("Recharge ORANGE"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      phoneNumber = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Numéro de téléphone",
                                    ),
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      amount = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Montant à recharger",
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Logique pour valider la recharge
                                    // Utilisez les valeurs de phoneNumber et amount
                                    //Navigator.pop(
                                    //  context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Valider"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Annuler"),
                                ),
                              ],
                            );
                          },
                        );
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
                Container(
                  margin: EdgeInsets.only(bottom: 22),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Action lorsque la Card est cliquée
                        // Ajoutez ici la logique pour afficher la liste de promos

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String phoneNumber = '';
                            String amount = '';

                            return AlertDialog(
                              backgroundColor: Colors.blue[50],
                              title: Text("Recharge AutoRoute"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      phoneNumber = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Numéro de téléphone",
                                    ),
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      amount = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Montant à recharger",
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Logique pour valider la recharge
                                    // Utilisez les valeurs de phoneNumber et amount
                                    //Navigator.pop(
                                    //  context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Valider"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Ferme la boîte de dialogue
                                  },
                                  child: Text("Annuler"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/logo-autoroute.jpg",
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              "Autoroutes du Maroc ",
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
                )
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
