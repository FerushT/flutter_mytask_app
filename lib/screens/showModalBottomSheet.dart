// Erstelle einen Button, der ein modales Bottom Sheet anzeigt, wenn er gedrückt wird. Das Bottom Sheet sollte Text,
// einen ElevatedButton, ein Image und einen Divider enthalten, der den Text vom Button trennt.
// Anforderungen:
// 	•	Verwende showModalBottomSheet, um das Bottom Sheet anzuzeigen.
// 	•	Füge Text, einen ElevatedButton, ein Image und einen Divider zum Bottom Sheet hinzu.

import 'package:flutter/material.dart';

class ModalesBottom extends StatelessWidget {
  const ModalesBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Modales Bottom"),
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
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          const Text("Ein Text."),
                          const Divider(),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("OK")),
                          Image.asset("assets/images/basketball.png"),
                        ],
                      );
                    });
              },
              child: const Text("Klick mich"),
            ))));
  }
}
