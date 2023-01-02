import 'package:api/data/models/product_model.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Product product;
  MyWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      padding: const EdgeInsets.all(20),
      child: Image.network(product.image),
    );
  }
}
