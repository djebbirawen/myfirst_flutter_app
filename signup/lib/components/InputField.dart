import 'package:flutter/material.dart';

import '../constants.dart';

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: lightbleu,
              border: const Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Entrer votre commande",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: lightbleu,
              border:
                  const Border(bottom: const BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "point de départ",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: lightbleu,
              border:
                  const Border(bottom: const BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "point d'arrivé",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: lightbleu,
              border:
                  const Border(bottom: const BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Prix",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: lightbleu,
              border:
                  const Border(bottom: const BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "delais de livraison",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: lightbleu,
              border:
                  const Border(bottom: const BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "ajouter un commentaire",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
