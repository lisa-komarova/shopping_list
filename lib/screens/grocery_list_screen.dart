import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/screens/new_item_screen.dart';

class GroceryListScreen extends StatefulWidget {
  const GroceryListScreen({super.key});

  @override
  State<GroceryListScreen> createState() => _GroceryListScreenState();
}

class _GroceryListScreenState extends State<GroceryListScreen> {
  final List<GroceryItem> _groceryItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your groceries'),
          actions: [
            IconButton(onPressed: _addItem, icon: const Icon(Icons.add))
          ],
        ),
        body: _groceryItems.isEmpty
            ? const Center(
                child: Text(
                  'No items',
                  style: TextStyle(fontSize: 20),
                ),
              )
            : ListView.builder(
                itemCount: _groceryItems.length,
                itemBuilder: ((context, index) => Dismissible(
                      onDismissed: (direction) {
                        setState(() {
                          _groceryItems.remove(_groceryItems[index]);
                        });
                      },
                      background: Container(color: Colors.red),
                      key: ValueKey(_groceryItems[index].id),
                      child: ListTile(
                        title: Text(_groceryItems[index].name),
                        leading: Icon(
                          Icons.circle,
                          color: _groceryItems[index].category.color,
                        ),
                        trailing: Text(_groceryItems[index].quantity.toString(),
                            style: const TextStyle(fontSize: 20)),
                      ),
                    )),
              ));
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
        MaterialPageRoute(builder: ((context) => const NewItemScreen())));

    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }
}
