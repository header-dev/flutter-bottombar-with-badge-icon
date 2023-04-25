import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product > Detail'),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 30),
          Text(
            'Product Detail Page',
            textScaleFactor: 2.0,
          ),
        ],
      )),
    );
  }
}
