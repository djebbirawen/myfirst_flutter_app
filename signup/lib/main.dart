// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:signup/Details/detailsScreen.dart';
import 'package:signup/constants.dart';
import 'package:signup/main_screen_nav.dart';
import 'package:signup/main_screen_navF.dart';
import 'package:signup/map/mappage.dart';
import 'package:signup/screens/Welcome/welcome_screen.dart';
import 'package:ffi/ffi.dart';
//import 'package:signup/screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      //home: const mapScreen(),
      home: const WelcomeScreen(),
      //home: const MainScreen(),
      //home: const MainScreenF(),
      //home: DetailsScreen(),
    );
  }
}
