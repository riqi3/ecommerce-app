import 'dart:math';

import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key,
    required this.name,
  required this.image,
  });
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.only(
            left: 3 + (defaultPadding / 2),
            right: 3 + (defaultPadding / 2),
            top: (defaultPadding / 2),
          ),
          margin: EdgeInsets.symmetric(
              vertical: defaultMargin / 2, horizontal: defaultMargin - 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius - 10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(defaultPadding - 19),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(borderRadius - 10),
                    ),
                    child: _rating(),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(defaultMargin - 6),
                  child: Image.asset(image),
                  width: imageSize + 40,
                  height: imageSize + 40,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: defaultPadding/2),
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: (fontSize-5),
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu efficitur eros.',
                maxLines: 2,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: mainColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$55.00',
                    style: TextStyle(
                      fontSize: 4+(fontSize/2),
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    ),
                    Icon(Icons.shopping_cart_checkout,
                    color: mainColor,)
                  ],
                ),
              ),
            ],
          ),
        );
  }
}

Text _rating() {
  Random random = new Random();
  double randomNumber = random.nextDouble() * 100;
  randomNumber = double.parse(randomNumber.toStringAsFixed(0));
  if (randomNumber <= 10) {
    return Text(
      '10%',
      style: fontStyleDiscount(),
    );
  }
  if (randomNumber >= 55) {
    return Text(
      '55%',
      style: fontStyleDiscount(),
    );
  }
  return Text(
    '${randomNumber.toInt()}%',
    style: fontStyleDiscount(),
  );
}

TextStyle fontStyleDiscount() {
  return TextStyle(
    fontSize: 2 + (fontSize / 2),
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
