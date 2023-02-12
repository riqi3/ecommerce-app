import 'package:ecommerce_app/constants.dart';
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
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding - 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(borderRadius - 10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Icon(
                        CupertinoIcons.plus,
                        size: 3 + (iconSize / 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: defaultPadding / 2, right: defaultPadding / 2),
                      child: SizedBox(
                        width: 20,
                        child: Text(
                          '01',
                          style: TextStyle(
                              fontSize: 4 + (fontSize / 2),
                              fontWeight: FontWeight.bold,
                              color: mainColor),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultPadding - 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(borderRadius - 10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 3 + (iconSize / 2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
