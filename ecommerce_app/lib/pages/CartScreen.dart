import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/CartAppBar.dart';
import '../widgets/CartBottomNav.dart';
import '../widgets/CartItem.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: defaultPadding - 8),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
            ),
            child: Column(
              children: [
                Column(
                  children: List.generate(
                    products.length,
                    (index) => CartItem(
                      image: products[index]['image'],
                      name: products[index]['name'],
                      price: products[index]['price'],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding - 14),
                  margin: EdgeInsets.symmetric(
                      vertical: defaultMargin - 4, horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius / 3),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(borderRadius / 3),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: (defaultPadding/2)-2),
                        child: Text(
                          'Add Coupon Code',
                          style: TextStyle(color: mainColor, fontWeight: FontWeight.bold, fontSize: (fontSize/2)+4),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNav(),
    );
  }
}
