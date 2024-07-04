import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('APPchara'),
        ),
        backgroundColor: Colors.yellow[300],
      ),
      body: Center(
          child: Image.network(
              'https://www.hungryhuy.com/wp-content/uploads/atchara-pickle-jars.jpg')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan[300],
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    ),
  ));
}
