/*

assets/images/list_view.png

Implementiere die UI von dem Screenshot. Sie zeigt eine Liste von Produkten.
Jedes Listenelement soll ein Warenkorb-Icon, einen Titel und einen Preis enthalten.

Hierbei soll eine ListView verwendet werden.

Hinweis: Ein Icon-Widget wird mit Icon(...) erstellt. Das Icon unten ist “Icons.shopping_cart”.
Hinweis: Hier kann das Spacer() oder das Expanded(...) Widget sehr nützlich sein.
*/

import 'package:flutter/material.dart';

class ListViewExercise extends StatelessWidget {
  const ListViewExercise({super.key});

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
        body: ListView(
          children: const [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart),
                Expanded(child: SizedBox()),
                Text("Product  1"),
                Spacer(
                  flex: 10,
                ),
                Text("\$10"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart),
                Expanded(child: SizedBox()),
                Text("Product  2"),
                Spacer(
                  flex: 10,
                ),
                Text("\$20"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart),
                Expanded(child: SizedBox()),
                Text("Product  3"),
                Spacer(
                  flex: 10,
                ),
                Text("\$30"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
