import 'package:flutter/material.dart';

import 'pages/CartScreen.dart';
import 'pages/Homescreen.dart';


void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/':(context) => HomeScreen(),
        'cartPage':(context) => CartScreen()
      },
    );
  }
}