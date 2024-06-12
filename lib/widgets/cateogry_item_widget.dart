import 'package:ar_app/Models/category_item.dart';
import 'package:ar_app/Views/category_view.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.categoryItem});
  final CategoryModel categoryItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: GestureDetector( onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CategoryView(),),
      ),
      child: CircleAvatar(
        radius: 31,
        backgroundColor: Colors.black,
        child: CircleAvatar(radius: 29,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
                      categoryItem.image,
                      fit: BoxFit.fill,
                      ),
          )),
      ),
            // child: Container(
            //     height: 60,
            //     width: 60,
            //     clipBehavior: Clip.antiAlias,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(28),
            //       boxShadow: [BoxShadow(color: const Color(0xff000000).withOpacity(0.35),
            //             offset:const Offset(1,1),
            //             blurRadius: 1)]
            //     ),
            //     child: Image.asset(
            //       categoryItem.image,
            //       fit: BoxFit.fill,
            //     )),
          ),
        ),
        Expanded(
          child: Text(
            categoryItem.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        
      ],
    );
  }
}
