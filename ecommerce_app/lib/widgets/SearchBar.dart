import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: defaultMargin / 2),
            height: 50,
            width: 200,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Here...'),
            ),
          ),
          Spacer(),
          Icon(
            Icons.camera_alt,
            size: iconSize-3,
            color: mainColor,
          ),
        ],
      ),
    );
  }
}
