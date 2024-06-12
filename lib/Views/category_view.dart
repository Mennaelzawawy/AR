import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/main.dart';
import 'package:ar_app/sliver_quilted_gridview_of_home.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Center(
              child: Text(
                S.of(context).chair,
                style:
                 TextStyle(color:isLight(context)? Colors.black: const Color(0xffFFB000), fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            ),
        body: CustomScrollView(
          slivers: [
            SliverQuiltedGrid(
              items: [
                ItemModel(
              image: 'assets/images/1.jpg',
              seller: S.of(context).Damieture,
              description: S.of(context).green_ch,
              price: 500,
              name: S.of(context).chair),
          ItemModel(
              image: 'assets/images/2.jpg',
              seller: S.of(context).Damieture,
              description: S.of(context).orange_ch,
              price: 2000,
              name: S.of(context).chair),
          ItemModel(
              image: 'assets/images/3.jpg',
              seller: 'Damieture',
              description: 'Beige chair',
              price: 600,
              name: S.of(context).chair),
              ],
            ),
          ],
        ));
  }
}
