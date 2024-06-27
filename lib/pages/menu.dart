import 'package:flutter/material.dart';
import 'package:untitled1/services/menuCard.dart';
import 'package:untitled1/services/product.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List product = <Product>[
    Product(productName: "Achara", price: 59.99),
    Product(productName: "Super Achara", price: 69.99),
    Product(productName: "Mini Achara", price: 79.99),
    Product(productName: "Main Achara", price: 89.99),
    Product(productName: "Double Achara", price: 99.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white70,
        title: Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0,
            ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: product.map((product) => Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}
