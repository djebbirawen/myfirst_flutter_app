import 'package:flutter/material.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/constants.dart';
import 'package:signup/screens/forU/forU_screen.dart';

class DetailsPage extends StatelessWidget {
  final String text;
  const DetailsPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map.jpg"))),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 350 - 30,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    maxLines: 1,
                    style: TextStyle(
                      //height: 1.171875,
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'de Manzah5 à Tunis ',
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: myGrey),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.place_rounded,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                          Text(" Manzah5",
                              style: TextStyle(
                                  //height: 1.171875,
                                  fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                          Text(" 17pm",
                              style: TextStyle(
                                  //height: 1.171875,
                                  fontSize: 14)),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        " 4dt",
                        style: TextStyle(
                            //height: 1.171875,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            color: kPrimaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Adresse de depart:  ',
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: myGrey),
                  ),
                  Text(
                    "Adresse d'arrivé:",
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: myGrey),
                  ),
                  Text(
                    'Caracteristiques :  ',
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: myGrey),
                  ),
                  Text(
                    'Type vehicule :  ',
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: myGrey),
                  ),
                  Text(
                    'Description:  ',
                    style: TextStyle(
                        //height: 1.171875,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                        color: myGrey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.6,
                      child: RoundedButton(
                        text: "Livraison Acceptée",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ForUScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
