import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemWidget.dart';
import '../widgets/SearchInputWidget.dart';
import '../widgets/TitleWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Appbar
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
                // Search input
                SearchInputWidget(),

                // Title
                TitleWidget("Categories"),

                // Categories
                CategoriesWidget(),

                // Title
                TitleWidget("Best Selling"),

                // Products
                ItemWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white,),
          Icon(Icons.list, size: 30, color: Colors.white,),
        ],
      ),
    );
  }
}
