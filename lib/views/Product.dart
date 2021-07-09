import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  ProductCarousel({Key? key}) : super(key: key);

  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  late final String title;
  late final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Amazon Prime Deals",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Product {}
