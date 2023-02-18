import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(defaultPadding - 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius - 10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Icon(
            CupertinoIcons.plus,
            size: 3 + (iconSize / 2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: defaultPadding / 2, right: defaultPadding / 2),
          child: SizedBox(
            width: 20,
            child: Text(
              '01',
              style: TextStyle(
                  fontSize: 4 + (fontSize / 2),
                  fontWeight: FontWeight.bold,
                  color: mainColor),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(defaultPadding - 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius - 10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Icon(
            CupertinoIcons.minus,
            size: 3 + (iconSize / 2),
          ),
        ),
      ],
    );
  }
}
