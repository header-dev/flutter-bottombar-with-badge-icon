import 'package:app1305/shared.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            btnAddCart(),
            btnDeleteCart(),
          ],
        ),
      ),
    );
  }

  Widget btnAddCart() => TextButton(
        onPressed: () => Share.addCart(11),
        child: Text(
          'Add Cart',
          textScaleFactor: 1.5,
        ),
      );

  Widget btnDeleteCart() => TextButton(
        onPressed: () => Share.removeCart(),
        child: Text(
          'Remove Cart',
          textScaleFactor: 1.5,
        ),
      );
}
