import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNav extends StatelessWidget {
  const ItemBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding - 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius / 3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$23',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart_badge_plus),
              label: Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: (fontSize / 2) + 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(mainColor),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: defaultPadding/2, horizontal: defaultPadding)
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)
                )),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
