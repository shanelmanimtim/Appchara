import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';
import 'package:untitled1/pages/Login.dart';
import 'package:untitled1/pages/Signup.dart';
import 'package:untitled1/pages/dashboard.dart';
import 'package:untitled1/pages/menu.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/Dashboard',
    routes: {
      '/' : (context) => Dashboard(),
      '/menu' : (context) => Menu(),
      '/profile' : (context) => Home(),
      '/Signup' : (context) => Signup(),
      '/Login' : (context) => Login(),
    },
  ));

