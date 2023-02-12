import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin + 4,
        horizontal: defaultMargin,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: mainColor,
        ),
      ),
    );
  }
}
