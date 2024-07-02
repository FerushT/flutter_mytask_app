// Erstelle ein Layout, das eine Row mit zwei Columns enthält. Jede Column enthält zwei Text Widgets.

// 	•	Erstelle ein StatelessWidget, das eine Row enthält.
// 	•	Füge zwei Expanded Widgets hinzu, die jeweils eine Column enthalten.
// 	•	Jede Column enthält zwei Text Widgets.

import 'package:flutter/material.dart';

class LayoutAndRowAndColumn extends StatelessWidget {
  const LayoutAndRowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Layout mit Row und Column"),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: const Row(children: [
              Expanded(
                child: Column(
                  children: [Text("Hallo 1"), Text("Hallo 2")],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Hallo 3"),
                    Text("Hallo 4"),
                  ],
                ),
              )
            ])));
  }
}
