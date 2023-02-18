import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/Counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemBottomNav.dart';
import '../widgets/ItemColor.dart';
import '../widgets/ItemSize.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key,
  });

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
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding - 4),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Product Title',
                            style: TextStyle(
                              fontSize: fontSize + 4,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: defaultPadding - 19,
                          bottom: (defaultPadding / 2) - 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: iconSize - 4,
                            itemPadding: EdgeInsets.symmetric(
                                horizontal: defaultPadding - 20),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite,
                              color: mainColor,
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Counter(),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: defaultPadding / 2),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu efficitur eros. Consectetur adipiscing elit!',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: fontSize - 7,
                          color: mainColor,
                        ),
                      ),
                    ),
                    ItemSize(),
                    ItemColor(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNav(),
    );
  }
}

