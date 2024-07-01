/*

assets/images/list_view.png

Implementiere die UI von dem Screenshot. Sie zeigt eine Liste von Produkten.
Jedes Listenelement soll ein Warenkorb-Icon, einen Titel und einen Preis enthalten.

Hierbei soll eine ListView verwendet werden.

Hinweis: Ein Icon-Widget wird mit Icon(...) erstellt. Das Icon unten ist “Icons.shopping_cart”.
Hinweis: Hier kann das Spacer() oder das Expanded(...) Widget sehr nützlich sein.
*/

import 'package:flutter/material.dart';

class Product {
  String name;
  int price;
  Icon icon;
  Color color;
  Product(this.name, this.price, this.icon, this.color);
}

List<Product> products = [
  Product("Koffer", 1, const Icon(Icons.shop), Colors.grey),
  Product("Hosenträger", 13, const Icon(Icons.close), Colors.brown),
  Product("Vape", 17, const Icon(Icons.vape_free), Colors.green),
  Product("Hut", 20, const Icon(Icons.shuffle), Colors.red),
  Product("Basketball", 80, const Icon(Icons.sports_basketball), Colors.orange)
];

class ListViewExerciseListBuilderClass extends StatelessWidget {
  const ListViewExerciseListBuilderClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("List View Exercise List Builder Class"),
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
                  leading: products[index].icon,
                  title: Text(products[index].name),
                  horizontalTitleGap: 50,
                  tileColor: products[index].color,
                  trailing: Text(
                    "\$${products[index].price}",
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              })),
    );
  }
}
