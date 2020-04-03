import 'package:flutter/material.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';
import 'package:flutter_app/pages/HomePage.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto',hintColor: Color(0xFFd0cece)),
    home: FoodDetailsPage(),
  )
);