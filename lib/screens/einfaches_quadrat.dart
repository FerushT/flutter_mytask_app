// Implementiere die UI von dem Screenshot. Hierbei kann dir das SizedBox-Widget helfen.
// assets/images/einfaches_quadrat.png

import 'package:flutter/material.dart';

class EinfachesQuadrat extends StatelessWidget {
  const EinfachesQuadrat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Einfaches Quadrat",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                child: const Center(
                  child: Text(
                    "Box 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.green,
                width: 200,
                height: 100,
                child: const Center(
                  child: Text(
                    "Box 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.red,
                width: 80,
                height: 200,
                child: const Center(
                  child: Text(
                    "Box 3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
