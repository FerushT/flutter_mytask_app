// "Erstelle eine Bildergalerie mit drei Bildern. Verwende Column und SizedBox, um zwischen den Bildern Abstände zu schaffen.

// 	•	Erstelle ein StatelessWidget, das eine Column enthält.
// 	•	Füge drei Image.network Widgets hinzu.
// 	•	Verwende SizedBox, um zwischen den Bildern einen Abstand von 10 Pixeln zu schaffen.
//

import 'package:flutter/material.dart';

class EinfacheBildergalerie extends StatelessWidget {
  const EinfacheBildergalerie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Einfache Bildergalerie"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://i.pinimg.com/564x/81/5d/c8/815dc88ad53dba5c949ff781fcce9575.jpg",
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                "https://i.pinimg.com/564x/1e/60/c0/1e60c03d5741b450c48e1128b0d29b4d.jpg",
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                "https://i.pinimg.com/564x/6f/c6/c7/6fc6c753b30bde8e2a0c5a58da5a50ca.jpg",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
