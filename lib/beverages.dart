import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_notifier.dart';
import 'screens/menu_list.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuNotifier(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuList(),
      ),
    );
  }
}

void main() {
  runApp(const Beverages());
}
