// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:signup/constants.dart';
import 'package:signup/screens/Add/editPage.dart';
import 'package:signup/screens/Home/home_screen.dart';
import 'package:signup/screens/Notifications/NotifScreen.dart';
import 'package:signup/screens/Profil/ProfilScreen.dart';

import 'package:signup/screens/wallet/wallet_screen.dart';

class MainScreenF extends StatefulWidget {
  const MainScreenF({Key? key}) : super(key: key);

  @override
  _MainScreenFState createState() => _MainScreenFState();
}

class _MainScreenFState extends State<MainScreenF> {
  int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // ignore: non_constant_identifier_names
  final Screen = [
    HomeScreen(),
    WalletScreen(),
    EditScreen(),
    NotifScreen(),
    ProfilPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 30,
            color: myGrey,
          ),
          Icon(
            Icons.savings_rounded,
            size: 30,
            color: myGrey,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: myGrey,
          ),
          Icon(
            Icons.notifications_rounded,
            size: 30,
            color: myGrey,
          ),
          Icon(
            Icons.person_rounded,
            size: 30,
            color: myGrey,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: lightbleu,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        // letIndexChange: (index) => true,
      ),
      body: Screen[_page],
    );
  }
}
