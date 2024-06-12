import 'package:ar_app/Views/home_view.dart';
import 'package:ar_app/Views/cart_view.dart';
import 'package:ar_app/Views/search_view.dart';
import 'package:ar_app/Views/settings_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBarWidget extends StatefulWidget {
  const CurvedNavigationBarWidget({super.key});
  static String id = "curvedNavigationBar";

  @override
  State<CurvedNavigationBarWidget> createState() =>
      _CurvedNavigationBarWidgetState();
}

class _CurvedNavigationBarWidgetState extends State<CurvedNavigationBarWidget> {
  int currentIndex = 0;
  List<Widget> pages = const [HomePage(), SearchView(), CartView(),SettingsView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
                color: const Color(0xff0969A6),
                backgroundColor: Colors.transparent,
                height: 50,
                animationDuration:const Duration(milliseconds: 350),
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items:const [
                  Icon(Icons.home_outlined,color: Colors.black,),
                  Icon(Icons.search,color: Colors.black,),
                  Icon(Icons.shopping_cart,color: Colors.black,),
                  Icon(Icons.settings_outlined,color: Colors.black,)
                ]),
          );
  }
}
