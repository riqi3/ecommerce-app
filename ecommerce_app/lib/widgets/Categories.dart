import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/data.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,
  required this.name,
  required this.image,
  });
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin-6),
            padding: EdgeInsets.symmetric(vertical: defaultPadding-19, horizontal: defaultPadding-14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius-10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: imageSize/2,
                  height: imageSize/2,
                  ),
                  Text(name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 2+(fontSize/2),
                    color: mainColor,
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}