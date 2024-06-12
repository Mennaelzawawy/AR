import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SliverQuiltedGrid extends StatelessWidget {
  const SliverQuiltedGrid({
    super.key, required this.items,
  });
  final List <ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(gridDelegate: SliverQuiltedGridDelegate(
    crossAxisCount: 2,
    mainAxisSpacing: 3,
    crossAxisSpacing: 3,
    repeatPattern: QuiltedGridRepeatPattern.inverted,
    pattern: const [
      // QuiltedGridTile(2, 2),
      QuiltedGridTile(1, 1),
      QuiltedGridTile(1, 1),

    ],
  ),itemCount: items.length,
   itemBuilder: (context,index){
    return ItemWidget(item: items[index]);
  });
  }
  }

