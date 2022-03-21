import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Center(
            child: Text(
              "Ajouter une Commande",
              style: TextStyle(
                height: 1.411764705882353,
                fontSize: 24.0,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 70, 67, 98),

                /* letterSpacing: 0.0, */
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "veuillez remplir les champs ",
              style: TextStyle(
                height: 1.411764705882353,
                fontSize: 18.0,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                color: Colors.white,

                /* letterSpacing: 0.0, */
              ),
            ),
          )
        ],
      ),
    );
  }
}
