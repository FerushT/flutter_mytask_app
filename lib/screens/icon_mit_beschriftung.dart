// Erstelle eine Row, die ein Icon und einen daneben stehenden Text enthält.

// 	•	Erstelle ein StatelessWidget, das eine Row enthält.
// 	•	Füge ein Icon und ein Text Widget hinzu.
// 	•	Verwende SizedBox, um zwischen dem Icon und dem Text einen Abstand von 8 Pixeln zu schaffen.

import 'package:flutter/material.dart';

class IconMitBeschriftung extends StatelessWidget {
  const IconMitBeschriftung({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 230, 211, 155),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 174, 236, 156),
            title: const Text("Icon mit Beschriftung"),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: const Row(
            children: [
              Icon(Icons.receipt),
              SizedBox(width: 8),
              Text("Das ist eine Zutatenliste."),
            ],
          )),
    );
  }
}
