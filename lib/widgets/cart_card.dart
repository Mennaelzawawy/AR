import 'package:ar_app/Models/item_model.dart';
import 'package:flutter/material.dart';

class CartCardWidget extends StatelessWidget {
  const CartCardWidget({super.key, required this.cartItem});
  final ItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color.fromARGB(255, 205, 203, 203),
            ),
          ),
          elevation: 3,
          child: ListTile(
            leading: Image.asset(cartItem.image),
            title: Text(cartItem.description),
            subtitle: Text(
              cartItem.price.toString(),
              style: const TextStyle(color: Colors.green),
            ),
            trailing: const Icon(Icons.delete),
          ),
        ),
      
    );
  }
}
