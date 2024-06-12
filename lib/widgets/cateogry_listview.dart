import 'package:ar_app/Models/category_item.dart';
import 'package:ar_app/widgets/cateogry_item_widget.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class CategoryListView extends StatelessWidget {
   const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
       final List <CategoryModel> category=[
    CategoryModel(image: 'assets/images/Beds.jpg', name: S.of(context).bed),
    CategoryModel(image: 'assets/images/Carpets.jpg', name: S.of(context).carpet),
    CategoryModel(image: 'assets/images/Chairs.jpg', name: S.of(context).chair),
    CategoryModel(image: 'assets/images/Curtain.jpg', name: S.of(context).curtain),
    CategoryModel(image: 'assets/images/Lights.jpg', name: S.of(context).lighting),
    CategoryModel(image: 'assets/images/Mirror.jpg', name: S.of(context).mirror),
    CategoryModel(image: 'assets/images/Table.jpg', name: S.of(context).table),
    CategoryModel(image: 'assets/images/Wardrobe.jpg', name: S.of(context).wardrobe),
  ];
    return SizedBox(width: double.infinity,
    height: 100,
      child: ListView.builder(padding: EdgeInsets.zero,
      physics:const BouncingScrollPhysics(),
        itemCount: category.length,
      scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return CategoryItemWidget(categoryItem:category[index] );
      }),
    );
  }
}
