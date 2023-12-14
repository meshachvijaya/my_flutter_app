import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../menu_notifier.dart';
import '/menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    var menuNotifier = Provider.of<MenuNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beverages",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF006041),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menuNotifier.items.length,
        itemBuilder: (context, index) {
          MenuItem currentItem = menuNotifier.items[index];

          return ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text(currentItem.name),
            subtitle: Text('Rp. ${currentItem.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    menuNotifier.decrementQuantity(index);
                  },
                ),
                Text(currentItem.quantity.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    menuNotifier.incrementQuantity(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
