import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "MONO Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "5",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "loginPage");
            },
            child: Text(
              "Đăng nhập",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




