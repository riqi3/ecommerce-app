import '../constants.dart';
import '../widgets/Counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key,
  required this.image,
  required this.name,
  required this.price,
  });

  final String image, name, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(
          horizontal: defaultMargin, vertical: defaultMargin - 6),
      padding: EdgeInsets.all(defaultPadding - 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius - 20),
      ),
      child: Row(
        children: [
          Radio(
            value: '',
            groupValue: '',
            activeColor: mainColor,
            onChanged: (index) {},
          ),
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: defaultMargin),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding - 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  style: TextStyle(
                    overflow:  TextOverflow.ellipsis,
                    fontSize: fontSize - 6,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: (defaultPadding / 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                Counter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

