import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Beverages());
}

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> beverages = [
      "Americano",
      "Latte",
      "Espresso",
      "Capuccino",
      "Mochacino",
    ];

    final List<String> prices = [
      "Rp. 20.000",
      "Rp. 30.000",
      "Rp. 30.000",
      "Rp. 20.000",
      "Rp. 10.000",
    ];

    int defaultQuantity = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beverages List",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF006041),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: beverages.length,
          itemBuilder: (context, index) {
            int quantity = defaultQuantity;
            return ListTile(
              title: Text(beverages[index]),
              subtitle: Text(prices[index]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        if (quantity > 0) {
                          quantity--;
                        }
                      },
                      icon: Icon(Icons.remove)),
                  Text(
                    quantity.toString(),
                  ),
                  IconButton(
                      onPressed: () {
                        quantity++;
                      },
                      icon: Icon(Icons.add)),
                ],
              ),
            );
          }),
    );
  }
}
