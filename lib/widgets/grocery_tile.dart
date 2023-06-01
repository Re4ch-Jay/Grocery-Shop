import 'package:flutter/material.dart';
import 'package:grocery_shop/models/cart.dart';
import 'package:grocery_shop/models/grocery.dart';
import 'package:provider/provider.dart';

class GroceryTile extends StatefulWidget {
  Grocery grocery;
  GroceryTile({super.key, required this.grocery});

  @override
  State<GroceryTile> createState() => _GroceryTileState();
}

class _GroceryTileState extends State<GroceryTile> {
  void removeItemFromCart(grocery) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(grocery);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListTile(
        leading: Image.asset('images/${widget.grocery.image}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => removeItemFromCart(widget.grocery),
        ),
        title: Text(widget.grocery.name),
        subtitle: Text(
          widget.grocery.price.toString(),
        ),
        tileColor: Colors.grey[200],
      ),
    );
  }
}
