import 'package:flutter/material.dart';
import 'package:neocart/screens/splashscreen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  await Hive.initFlutter();
  await Hive.openBox("sign_in");
  runApp(MaterialApp(
    routes: {

    },
    theme: ThemeData(
      useMaterial3: false
    ),
    debugShowCheckedModeBanner: false,
    home: splashscreen()
  ));
}

