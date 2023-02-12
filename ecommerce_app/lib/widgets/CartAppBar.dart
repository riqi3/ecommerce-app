import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/SectionTitle.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

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
            child: Icon(
              Icons.arrow_back,
              size: iconSize,
              color: mainColor,
            ),
          ),
          SectionTitle(title: 'Cart'),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: iconSize,
            color: mainColor,
          ),
        ],
      ),
    );
  }
}
