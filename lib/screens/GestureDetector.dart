// Erstelle einen roten Container, der auf einen Tap reagiert. Wenn der Container getippt wird,
//soll eine Snackbar angezeigt werden.
// Anforderungen:
// 	•	Verwende einen GestureDetector, um Taps zu erkennen.
// 	•	Zeige eine Snackbar an, wenn der Container getippt wird.

import 'package:flutter/material.dart';

class BigRed extends StatelessWidget {
  const BigRed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Gesture Detector"),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: Center(
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Der Container wurde getippt.")),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  child: const Text("Tap me"),
                ),
              ),
            )));
  }
}
