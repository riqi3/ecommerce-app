import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: iconSize,
            color: mainColor,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultPadding - 4,
            ),
            child: Text(
              'DP Shop',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            showBadge: true,
            badgeContent: Text(
              '7',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cartPage');
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: iconSize,
                color: mainColor,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
