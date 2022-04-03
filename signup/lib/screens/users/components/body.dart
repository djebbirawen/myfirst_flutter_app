// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/constants.dart';
import 'package:signup/screens/Signup/components/background.dart';
//import 'package:signup/screens/Login/components/background.dart';
import 'package:signup/screens/Signup/signup_screen.dart';
import 'package:signup/screens/signupF/signup_screenF.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.08),
          Center(
            child: Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_cctgy7u6.json',
              height: size.height * 0.45,
            ),
          ),
          /*Image.asset(
            "assets/images/sign.png",
            width: size.width * 0.5,


          ),
*/
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
            child: const Text(
              "Vous etes ?",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //SizedBox(height: size.height * 0.05),

          RoundedButton(
            text: "Client",
            color: kPrimaryLightColor,
            textColor: Colors.grey.shade900,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreenF();
                  },
                ),
              );
            },
          ),
          SizedBox(width: size.width * 0.05),
          RoundedButton(
            text: "Livreur",
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
