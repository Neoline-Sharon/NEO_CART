import 'package:flutter/material.dart';
import 'package:neocart/screens/splashscreen.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: false
    ),
    debugShowCheckedModeBanner: false,
    home: splashscreen()
  ));
}

