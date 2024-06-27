import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';
import 'package:untitled1/pages/dashboard.dart';
import 'package:untitled1/pages/menu.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/menu',
    routes: {
      '/' : (context) => Dashboard(),
      '/menu' : (context) => Menu(),
      '/profile' : (context) => Home(),
    },
  ));

