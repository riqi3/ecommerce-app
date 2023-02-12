import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/Categories.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/SearchBar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 500,
            padding: EdgeInsets.only(top: defaultPadding / 2),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultPadding + 11),
                topRight: Radius.circular(defaultPadding + 11),
              ),
            ),
            child: Column(
              children: [
                SearchBar(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: defaultMargin + 4,
                    horizontal: defaultMargin,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                ),
                Categories(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

