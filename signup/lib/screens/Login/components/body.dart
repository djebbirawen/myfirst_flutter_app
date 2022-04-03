// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:flutter_svg/svg.dart';

//import 'package:lottie/lottie.dart';
//import 'package:signup/components/already_have_an_account_acheck.dart';

import 'package:signup/components/rounded_button.dart';
import 'package:signup/components/rounded_input_field.dart';
import 'package:signup/components/rounded_password_field.dart';
import 'package:signup/constants.dart';
import 'package:signup/model/login_model.dart';
import 'package:signup/screens/Login/components/background.dart';
import 'package:signup/screens/login_success/login_sucess_screen.dart';
import 'package:signup/screens/users/sign1.dart';
//import 'package:signup/screens/Signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  //erreur
/* LoginRequestModel requestModel;
  @override
  void initState() {
    final super.initState();
    requestModel = new LoginRequestModel(email: '', password: '');
  }*/
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.08),
            const Text("Login",
                style: TextStyle(
                  height: 1.171875,
                  fontSize: 34.0,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 41, 35, 92),
                )),
            Center(
              child: Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_ffkzpglj.json',
                height: size.height * 0.45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 10.0),
              child: Column(
                children: [
                  // SizedBox(height: size.height * 0.01),
                  TextFormField(
                    //  onSaved: (input) => requestModel.email ,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor))),
                  ),
                  TextField(
                    //   onSaved:(input) => requestModel.password ,
                    decoration: InputDecoration(
                        labelText: 'Mot De Passe  ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: kPrimaryLightColor,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor))),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginSuccessScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don’t have an Account ? ",
                  //' dont have account',
                  style: const TextStyle(color: kPrimaryColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return userscreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    // ' dont have account',
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
