import 'package:flutter/material.dart';

import 'package:signup/screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Background(
      child: Column(
        children: const [
          Text(
            'Welcome to TAQTAk',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
