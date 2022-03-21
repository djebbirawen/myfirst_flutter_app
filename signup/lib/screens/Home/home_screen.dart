// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

import 'package:signup/constants.dart';
//import 'package:signup/main_screen_nav.dart';
import 'package:signup/screens/Home/component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Body(),
            ),
          ),
        ],
      ),

      //bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: lightbleu,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: myGrey,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "ACCEUIL",
        style: TextStyle(
            height: 1.171875,
            fontSize: 14.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
            letterSpacing: 2.0,
            color: myGrey),
      ),
      /*actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search_outlined,
            color: Colors.grey.shade700,
          ),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: 10 * 0.5,
        )
      ],*/
    );
  }
}
