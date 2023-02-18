import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/ItemAppBar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all((defaultPadding / 2) + 4),
            child: Image.asset(
              'assets/images/1.png',
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Text('Product Title', style: TextStyle(
                      fontSize: fontSize+4,
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
