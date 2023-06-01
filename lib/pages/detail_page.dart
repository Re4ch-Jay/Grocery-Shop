import 'package:flutter/material.dart';
import 'package:grocery_shop/models/cart.dart';
import 'package:grocery_shop/models/grocery.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  Grocery grocery;
  DetailPage({super.key, required this.grocery});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void addItemToCart(item) {
    Provider.of<Cart>(context, listen: false).addItemToCart(item);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Succeffuly Added'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.grocery.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              child: Expanded(
                  child: Image.asset('images/${widget.grocery.image}')),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price: \$${widget.grocery.price}/kg',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () => addItemToCart(widget.grocery),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            Text(widget.grocery.description),
          ],
        ),
      ),
    );
  }
}
