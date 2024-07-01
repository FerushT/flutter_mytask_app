/*

assets/images/list_view.png

Implementiere die UI von dem Screenshot. Sie zeigt eine Liste von Produkten.
Jedes Listenelement soll ein Warenkorb-Icon, einen Titel und einen Preis enthalten.

Hierbei soll eine ListView verwendet werden.

Hinweis: Ein Icon-Widget wird mit Icon(...) erstellt. Das Icon unten ist “Icons.shopping_cart”.
Hinweis: Hier kann das Spacer() oder das Expanded(...) Widget sehr nützlich sein.
*/

import 'package:flutter/material.dart';

Map<String, int> products = {
  "Product 1": 10,
  "Product 2": 20,
  "Product 3": 30,
  "Product 4": 40,
  "Product 5": 50,
  "Product 6": 60,
};

class ListViewExerciseListBuilder extends StatelessWidget {
  const ListViewExerciseListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ListView Exercise"),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text(products.keys.toList()[index]),
                  horizontalTitleGap: 50,
                  trailing: Text(
                    "\$${products.values.toList()[index]}",
                    style: TextStyle(fontSize: 15),
                  ),
                );
              })),
    );
  }
}
