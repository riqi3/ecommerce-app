import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/CartAppBar.dart';
import '../widgets/CartItem.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: defaultPadding - 8),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    products.length,
                    (index) => CartItem(
                      image: products[index]['image'],
                      name: products[index]['name'],
                      price: products[index]['price'],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
