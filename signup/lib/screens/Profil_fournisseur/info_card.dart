// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:signup/constants.dart';

import '../../constants.dart';

class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  // Function onPressed;

  InfoCard({
    required this.text,
    required this.icon,
    /*required this.onPressed*/
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //  onTap: onPressed(),
      child: Card(
        color: newT,
        elevation: 0,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: lightbleu),
            child: Icon(
              icon,
              color: kPrimaryColor,
            ),
          ),
          title: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: "Poppins"),
          ),
        ),
      ),
    );
  }
}
