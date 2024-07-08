import'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';

class selectedProduct extends StatefulWidget {
  final Product product;
  const selectedProduct({super.key,required this.product});

  @override
  State<selectedProduct> createState() => _selectedProductState();
}

class _selectedProductState extends State<selectedProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.product.productName),
          Text(widget.product.description),
          Text(widget.product.price.toString()),

          Row(
            children: [
              Text(widget.product.price.toString()),
            ],
          ),
          SizedBox(height: 30.0,)
          IconButton(
              onPressed:
              onPressed(){},
              icon: ic)
        ],
      ),

    );
  }
}
