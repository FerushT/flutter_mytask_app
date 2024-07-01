// Erstelle die UI von dem Screenshot. Hierzu musst du sowohl Column als auch Row Widgets verwenden.
// Hinweis: Beachte, wie die Elemente genau angeordnet sind.
// assets/images/column_and_row_example.png

import 'package:flutter/material.dart';

class ColumnAndRowExample extends StatelessWidget {
  const ColumnAndRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column and Row Example",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("AB"),
                  Text("CD"),
                  Text("E"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
