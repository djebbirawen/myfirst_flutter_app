// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe, deprecated_member_use
import 'package:signup/constants.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_svg/flutter_svg.dart';

import 'package:signup/screens/Welcome/components/background.dart';

import 'package:signup/RaisedButton.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations

    // ignore: sized_box_for_whitespace
    Size size = MediaQuery.of(context).size;
    var myGradient;
    return Background(
      child: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: 80.0),
            Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.5,
            ),
            SizedBox(height: 45.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 8.0),
              child: Text('Application de livraison collaboratif ',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 34.0,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 41, 35, 92),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 8.0),
              child: Text(
                'Nous rejoindre à notre reseau en tant que commerçant ou livreur',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.411764705882353,
                  fontSize: 17.0,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 70, 67, 98),

                  /* letterSpacing: 0.0, */
                ),
              ),
            ),
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.35,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        // ignore: prefer_const_literals_to_create_immutables
                        colors: [kPrimaryColor, kPrimaryLightColor]),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(18),
                    child: FlatButton(
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40.0),
                        //color: kPrimaryColor,

                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(width: 30.0),
                FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
                    onPressed: () {},
                    child: Text('SIGN UP')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
