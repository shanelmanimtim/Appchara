import'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';

class selectedProduct extends StatefulWidget {
  final Product product;
  const selectedProduct({super.key,required this.product});

  @override

  State<selectedProduct> createState() => _selectedProductState(product: product);
}

class _selectedProductState extends State<selectedProduct> {
  final Product product;
  late double totalAmount = product.price;
  int numbersOfOrders =1;
  _selectedProductState({required this.product});

  @override
  void initState(){
    super.initState();
    totalAmount = product.price;
  }
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₱ ${totalAmount.toString()}',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
         Row(
          children: [
            IconButton(
                onPressed: (){
                  setState(() {
                    if(numbersOfOrders > 1){
                      numbersOfOrders -= 1;
                      totalAmount = product.price * numbersOfOrders;
                    }
                  });
                },
                icon: Icon(Icons.remove),
            ),
            Text(
              numbersOfOrders.toString(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
                IconButton(
                onPressed:(){
                  setState(() {
                    numbersOfOrders += 1;
                    totalAmount = product.price * numbersOfOrders;
                  });
                },
                icon: Icon(Icons.add),
            ),
           ],
         ),
        ],
      ),

    );
  }
}
