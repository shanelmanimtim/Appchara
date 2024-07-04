import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled1/services/menuCard.dart';
import 'package:untitled1/services/product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Future<List<dynamic>> products;
  Future<List<dynamic>> fetchData() async{
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/Products')
    );
    final data = jsonDecode(response.body);
    List products = <Product>[];
    for(var product in data){
      products.add(Product.fromJson(product));
    }
    return products;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products = fetchData();
  }
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
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: FutureBuilder(
          future: products,
          builder: (context, snapshots){
            if(snapshots.connectionState == ConnectionState.waiting){
              return Center(
                child: SpinKitRipple(
                  color: Colors.pinkAccent,
                  size: 60.0,
                ),
              );
            }
            if(snapshots.hasData){
              List products = snapshots.data!;
              for(var product in products){
                return Card(
                  child: ListTile(
                    title: Text(product.productName),
                  ),
                );
              }
            }
            return Center(
              child: Text('Unable to load data'),
            );
          },
        ),
      ),
    );
  }
}
