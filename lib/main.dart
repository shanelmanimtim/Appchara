import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
       title: Text('User Profile'),
       backgroundColor: Colors.pinkAccent,
       centerTitle: true,
     ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'Shanel Ann Manimtim',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'YEAR',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '4th Year',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'EMAIL',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'manimtimshanelm@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    ),
  ));

