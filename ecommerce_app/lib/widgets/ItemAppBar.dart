import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: fontSize, color: mainColor,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding-4),
            child: Text('Product', style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),),
          ),
          Spacer(),
          Icon(Icons.favorite,
          size: iconSize,
          color: Colors.red,)
        ],
      ),
    );
  }
}