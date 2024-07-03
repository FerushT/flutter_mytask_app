// Erstelle eine Benutzeroberfläche, die eine Row enthält, in der zwei Container mit fester Breite und ein Container mit dynamischer Breite (mittels Expanded) enthalten sind.
// Anforderungen:
// 	•	Der erste Container soll eine feste Breite von 100 Pixeln haben und rot sein.
// 	•	Der zweite Container soll den verbleibenden Platz in der Row einnehmen und grün sein.
// 	// •	Der dritte Container soll eine feste Breite von 100 Pixeln haben und blau sein.

import 'package:flutter/material.dart';

class ExpandetWidget extends StatelessWidget {
  const ExpandetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row mit Containern'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
