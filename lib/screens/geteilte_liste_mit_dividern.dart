// Erstelle eine Liste mit drei Text-Widgets, die durch Divider getrennt sind.

// 	•	Erstelle ein StatelessWidget, das eine Column enthält.
// 	•	Füge drei Text Widgets hinzu.
// 	•	Füge zwischen jedem Text-Widget einen Divider hinzu.

import 'package:flutter/material.dart';

class GeteilteListeMitDividern extends StatelessWidget {
  const GeteilteListeMitDividern({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Geteilte Liste mit Dividern"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Column(
        children: [
          Text("Der Weg über die Wiese ist kürzer als zu Fuß"),
          Divider(
            indent: 15,
            endIndent: 15,
          ),
          Text("Alles hat ein Ende nur die Wurst hat 2"),
          Divider(
            indent: 15,
            endIndent: 15,
          ),
          Text("Das ist der Weg")
        ],
      ),
    ));
  }
}
