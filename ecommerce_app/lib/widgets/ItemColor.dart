import 'package:flutter/material.dart';

import '../constants.dart';
import '../data.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: (defaultPadding / 2) - 4),
      child: Row(
        
        children: [
          
          Text(
            'Color:',
            style: TextStyle(
              fontSize: fontSize - 6,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin - 11),
                decoration: BoxDecoration(
                  color: Clrs[i],
                  borderRadius:
                      BorderRadius.circular(borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
