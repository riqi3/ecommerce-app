import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ProductGrid.dart';
import '../widgets/Categories.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/SearchBar.dart';
import '../widgets/SectionTitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: defaultPadding / 2),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultPadding + 11),
                topRight: Radius.circular(defaultPadding + 11),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchBar(),
                  SectionTitle(
                    title: 'Categories',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          category.length,
                          (index) => Categories(
                                name: category[index]['name'],
                                image: category[index]['image'],
                              )),
                    ),
                  ),
                  SectionTitle(
                    title: 'Best Selling',
                  ),
                  GridView.count(
                    childAspectRatio: 0.62,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        products.length,
                        (index) => ProductGrid(
                              name: products[index]['name'],
                              image: products[index]['image'],
                            )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          
        },
        height: 70,
        color: mainColor,
        items: [
                    Icon(
            Icons.home,
            size: iconSize,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: iconSize,
            color: Colors.white,
          ),
                    Icon(
            Icons.list,
            size: iconSize,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
