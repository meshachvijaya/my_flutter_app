import 'package:flutter/material.dart';
import 'menu_item.dart';

class MenuNotifier extends ChangeNotifier {
  List<MenuItem> items = [
    MenuItem(name: "Americano", price: 15000),
    MenuItem(name: "Latte", price: 18000),
    MenuItem(name: "Capuccino", price: 20000),
    MenuItem(name: "Mocachino", price: 19000),
    MenuItem(name: "Espresso", price: 17000),
  ];

  void incrementQuantity(int index) {
    if (items[index].quantity >= 0) {
      items[index].quantity++;
      notifyListeners();
    }
  }

  void decrementQuantity(int index) {
    if (items[index].quantity > 0) {
      items[index].quantity--;
      notifyListeners();
    }
  }
}
