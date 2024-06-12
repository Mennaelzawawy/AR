import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/main.dart';
import 'package:ar_app/widgets/cateogry_listview.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../sliver_quilted_gridview_of_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              S.of(context).Categories_name,
              style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isLight(context)? const Color(0xffd95525):const Color(0xffd95525))
            ),
          ),
        ),
        // const SliverToBoxAdapter(
        //     child: SizedBox(
        //   height: 40,
        // )),
        const SliverToBoxAdapter(child: CategoryListView()),
        // const SliverToBoxAdapter(
        //     child: SizedBox(
        //   height: 10,
        // )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              S.of(context).Popular_items_name,
              style: TextStyle(
                color: isLight(context)? const Color(0xffd95525):const Color(0xffd95525),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              )
            ),
          ),
        ),
        SliverQuiltedGrid(items: [
          ItemModel(
              image: 'assets/images/1.jpg',
              seller: S.of(context).Damieture,
              description: S.of(context).green_ch,
              price: 500,
              name: S.of(context).chair,
              id: 1),
          ItemModel(
              image: 'assets/images/2.jpg',
              seller: S.of(context).Damieture,
              description: S.of(context).orange_ch,
              price: 2000,
              name: S.of(context).chair,
              id: 2),
          ItemModel(
              image: 'assets/images/3.jpg',
              seller: 'Damieture',
              description: 'Beige chair',
              price: 600,
              name: S.of(context).chair,
              id: 3),
          ItemModel(
              image: 'assets/images/4.jpg',
              seller: 'Damieture',
              description: 'Wooden bed',
              price: 700,
              name: S.of(context).bed,
              id: 4),
          ItemModel(
              image: 'assets/images/5.jpg',
              seller: 'Damieture',
              description: 'Pink bed',
              price: 800,
              name: S.of(context).bed,
              id: 5),
          ItemModel(
              image: 'assets/images/6.jpg',
              seller: 'Damieture',
              description: 'Grey bed',
              price: 900,
              name: S.of(context).bed,
              id: 6),
          ItemModel(
              image: 'assets/images/7.jpg',
              seller: 'Damieture',
              description: 'Beige ligthing unit',
              price: 1000,
              name: S.of(context).lighting),
          ItemModel(
              image: 'assets/images/8.jpg',
              seller: 'Damieture',
              description: 'Black ligthing unit',
              price: 1100,
              name: S.of(context).lighting),
          ItemModel(
              image: 'assets/images/9.jpg',
              seller: 'Damieture',
              description: 'White ligthing unit',
              price: 1200,
              name: S.of(context).lighting),
          ItemModel(
              image: 'assets/images/10.jpg',
              seller: 'Damieture',
              description: 'Wooden table with 4 chairs',
              price: 1300,
              name: S.of(context).table),
        ]),
      ],
    ));
  }
}
