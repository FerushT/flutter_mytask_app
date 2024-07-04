/*
Warenkorb (sehr schwer!)
Kannst du eine funktionierende Warenkorbanzeige einbauen?

Es soll irgendwo angezeigt werden, wie viele Produkte im Warenkorb sind.

Bei einem Klick auf das Warenkorb-Icon eines Produktes soll dieses in den Warenkorb gelegt werden. Ist das Produkt bereits im Warenkorb, soll dieses wieder herausgenommen werden.

Wenn ein Produkt im Warenkorb ist, soll das Warenkorb-Icon eine andere Farbe haben.
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
  Product("Hosenträger", 13, const Icon(Icons.close), Colors.grey),
  Product("Vape", 17, const Icon(Icons.vape_free), Colors.grey),
  Product("Hut", 20, const Icon(Icons.shuffle), Colors.grey),
  Product("Basketball", 80, const Icon(Icons.sports_basketball), Colors.grey)
];
List<Product> shoppingCard = [];

int totalAmount() {
  int summe = 0;

  for (int i = 0; i < shoppingCard.length; i++) {
    summe += shoppingCard[i].price;
  }
  return summe;
}

class ListViewExerciseListBuilderClassShoppingBag extends StatefulWidget {
  const ListViewExerciseListBuilderClassShoppingBag({super.key});

  @override
  State<ListViewExerciseListBuilderClassShoppingBag> createState() =>
      _ListViewExerciseListBuilderClassShoppingBagState();
}

class _ListViewExerciseListBuilderClassShoppingBagState
    extends State<ListViewExerciseListBuilderClassShoppingBag> {
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
          body: Column(
            children: [
              SizedBox(
                height: 320,
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            if (shoppingCard.contains(products[index])) {
                              products[index].color = Colors.red;
                            } else {
                              shoppingCard.add(products[index]);
                            }
                          });
                        },
                        leading: products[index].icon,
                        title: Text(products[index].name),
                        horizontalTitleGap: 50,
                        tileColor: products[index].color,
                        trailing: Text(
                          "\$${products[index].price}",
                          style: const TextStyle(fontSize: 15),
                        ),
                      );
                    }),
              ),
              Text("Im Warenkorb sind ${shoppingCard.length}"),
              SizedBox(
                height: 330,
                child: ListView.builder(
                    itemCount: shoppingCard.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            shoppingCard.remove(shoppingCard[index]);
                          });
                        },
                        leading: shoppingCard[index].icon,
                        title: Text(shoppingCard[index].name),
                        horizontalTitleGap: 50,
                        tileColor: shoppingCard[index].color,
                        trailing: Text(
                          "\$${shoppingCard[index].price}",
                          style: const TextStyle(fontSize: 15),
                        ),
                      );
                    }),
              ),
              Text("Ingesamt ${totalAmount()}")
            ],
          )),
    );
  }
}
