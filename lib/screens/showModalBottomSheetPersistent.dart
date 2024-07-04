// Aufgabe:
// Erstelle einen Button, der ein persistentes Bottom Sheet anzeigt, wenn er gedrückt wird.
// Das Bottom Sheet sollte Text, einen TextButton, ein Icon und einen Divider enthalten, der den Text vom Button trennt.
// Anforderungen:
// 	•	Verwende showBottomSheet, um das Bottom Sheet anzuzeigen.
// 	•	Füge Text, einen TextButton, ein Icon und einen Divider zum Bottom Sheet hinzu.

import 'package:flutter/material.dart';

class PersistentBottom extends StatelessWidget {
  final scaffoldState = GlobalKey<ScaffoldState>();
  PersistentBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            key: scaffoldState,
            appBar: AppBar(
              title: const Text("Persistent Bottom"),
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
                      scaffoldState.currentState?.showBottomSheet((context) {
                        return Column(
                          children: [
                            const Text("Ein Text"),
                            const Divider(),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("OK")),
                            const Icon(Icons.sports_basketball)
                          ],
                        );
                      });
                    },
                    child: const Text("TextButton")))));
  }
}
