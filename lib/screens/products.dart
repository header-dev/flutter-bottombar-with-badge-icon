import 'package:app1305/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Product'),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Product Page',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnDetail(context),
          ],
        )),
      );

  Widget btnDetail(BuildContext context) => TextButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(),
          ),
        ),
        child: Text(
          'Product Detail >>',
          textScaleFactor: 1.5,
        ),
      );
}
