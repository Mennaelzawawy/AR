import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/cart_card_listview.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return CartCardListView(cartItem:[ItemModel(
             image: 'assets/images/1.jpg',
              seller: S.of(context).Damieture,
              description: S.of(context).green_ch,
              price: 500,
              name: S.of(context).chair),
        ] );
  }
}