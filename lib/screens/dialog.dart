// Erstelle einen Button, der einen AlertDialog anzeigt, wenn er gedrückt wird. Der Dialog soll einen Titel, eine Nachricht und zwei Buttons (“Abbrechen” und “OK”) enthalten.
// Anforderungen:
// 	•	Der Button soll einen AlertDialog anzeigen.
// 	•	Der AlertDialog soll einen Titel und eine Nachricht haben.
// 	•	Der Dialog soll zwei Buttons enthalten: “Abbrechen” und “OK”

import 'package:flutter/material.dart';

class HinweisDialog extends StatelessWidget {
  const HinweisDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AlertDialog'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const Center(
          child: AlertButton(),
        ),
      ),
    );
  }
}

class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Titel'),
          content: const Text('Dies ist eine Nachricht.'),
          actions: [
            TextButton(
              child: const Text('Abbrechen'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showAlertDialog(context);
      },
      child: const Text('Zeige AlertDialog'),
    );
  }
}
