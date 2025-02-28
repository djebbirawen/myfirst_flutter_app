import 'package:flutter/material.dart';
import 'package:signup/constants.dart';
import 'package:signup/screens/Profil/info_card.dart';

// our data

const email = "infolib@gmail.com";
const phone = "51725907"; // not real number :)
const location = "Marsa";
const type_permis = "permis type B";
const categorie = "livreur autonome";
const type_voiture = "Ford camaro";
const Compte_bancaire = "Num RIB";
const autre_info = "autre info";

class ProfilPage extends StatelessWidget {
  static const IconData airport_shuttle_rounded =
      IconData(0xf54f, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightbleu,
        appBar: new AppBar(
          backgroundColor: lightbleu,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: myGrey,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.edit,
                color: myGrey,
              ),
              onPressed: () {},
              // onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          //leading: new Container(),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/livreur.png'),
                  ),
                ),

                Container(
                  child: Text(
                    "Si el Livreur",
                    style: TextStyle(
                      height: 1.411764705882353,
                      fontSize: 34.0,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 70, 67, 98),

                      /* letterSpacing: 0.0, */
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Livreur autonome",
                  style: TextStyle(
                      fontSize: 15,
                      color: myGrey,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.grey[900],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // widget name info carrd

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      // elevation: 0,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          gradient: LinearGradient(
                              end: Alignment.topRight,
                              begin: Alignment.bottomLeft,
                              stops: [0.4, 0.7],
                              colors: [kPrimaryLightColor, kPrimaryColor])),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      // color: kPrimaryColor,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: InfoCard(
                              text: phone,
                              icon: Icons.phone, /*    onPressed: () async {}*/
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: location,
                            icon: Icons.location_city,
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: email,
                            icon: Icons.email,
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: type_permis,
                            icon: Icons.card_membership_rounded,
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: type_voiture,
                            icon: Icons.drive_eta_rounded,
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: Compte_bancaire,
                            icon: Icons.money,
                          ),
                          SizedBox(
                            height: 20,
                            width: 350,
                            child: Divider(
                              color: Colors.white30,
                            ),
                          ),
                          InfoCard(
                            text: autre_info,
                            icon: Icons.more,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
