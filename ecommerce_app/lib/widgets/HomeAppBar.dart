import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

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
              'DP Shop0',
              style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,
              color: mainColor,),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
