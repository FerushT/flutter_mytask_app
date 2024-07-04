/*

assets/images/list_view.png

Implementiere die UI von dem Screenshot. Sie zeigt eine Liste von Produkten.
Jedes Listenelement soll ein Warenkorb-Icon, einen Titel und einen Preis enthalten.

Hierbei soll eine ListView verwendet werden.

Hinweis: Ein Icon-Widget wird mit Icon(...) erstellt. Das Icon unten ist “Icons.shopping_cart”.
Hinweis: Hier kann das Spacer() oder das Expanded(...) Widget sehr nützlich sein.
*/

import 'package:flutter/material.dart';

class ListViewExerciseListTile extends StatelessWidget {
  const ListViewExerciseListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ListView Exercise List Tile"),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Product  1"),
                subtitle: Text("Beschreibung"),
                horizontalTitleGap: 50,
                trailing: Text(
                  "\$10",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          )),
    );
  }
}
