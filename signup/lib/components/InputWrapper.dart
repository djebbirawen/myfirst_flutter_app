import 'package:flutter/material.dart';
import 'package:signup/components/rounded_button.dart';

import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: InputField(),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "si vous avez terminer veuillez cliquer sur ajouter",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedButton(
              text: "Ajouter ",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
