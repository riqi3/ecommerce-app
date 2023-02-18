import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class CartBottomNav extends StatelessWidget {
  const CartBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:',
                style: TextStyle(
                  color: mainColor,
                  fontSize: fontSize-2,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('\$250.00', style: TextStyle(
                  fontSize: fontSize+1,fontWeight: FontWeight.bold,
                  color: mainColor,
                ),),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(borderRadius/2),
              ),
              child: Text('Check Out', style: TextStyle(
                fontSize: (fontSize-4),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}