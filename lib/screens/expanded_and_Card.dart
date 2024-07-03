// Aufgabe:
// Erstelle eine Benutzeroberfläche, die eine Row enthält, in der zwei Card-Widgets und ein Expanded-Widget enthalten sind.
// Anforderungen:
// 	•	Das erste Card-Widget soll eine feste Breite von 100 Pixeln haben und Text anzeigen.
// 	•	Das zweite Card-Widget soll eine feste Breite von 100 Pixeln haben und Text anzeigen.
// 	•	Das Expanded-Widget in der Mitte soll den verbleibenden Platz einnehmen und Text anzeigen.

import 'package:flutter/material.dart';

class UI extends StatelessWidget {
  const UI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row mit Card-Widgets & Expandet-Widget"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const Center(
          child: CustomRow(),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          child: Container(
            width: 100,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Erste Karte',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Expanded Karte',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Card(
          child: Container(
            width: 100,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Zweite Karte',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
