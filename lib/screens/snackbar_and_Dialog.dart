// Erstelle eine Benutzeroberfläche, die einen Button enthält. Wenn dieser Button gedrückt wird,
// soll zuerst ein AlertDialog angezeigt werden. Wenn der Benutzer auf “OK” klickt, soll eine Snackbar angezeigt werden.
// Anforderungen:
// 	•	Der Button soll einen AlertDialog anzeigen.
// 	•	Der AlertDialog soll eine “OK”-Schaltfläche haben.
// 	•	Wenn auf “OK” geklickt wird, soll eine Snackbar mit einer Nachricht angezeigt werden.

import 'package:flutter/material.dart';

class SnackbarAndDialog extends StatelessWidget {
  const SnackbarAndDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AlertDialog"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Dialog"),
                    content: const Text("Das ist ein AlertDialog."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Das war die Snackbar"),
                              duration: Duration(seconds: 10),
                            ),
                          );
                        },
                        child: const Text("OK"),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("Zeige Dialog"),
          ),
        ),
      ),
    );
  }
}
