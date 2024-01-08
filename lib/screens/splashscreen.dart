import 'package:flutter/material.dart';
import 'package:neocart/loginpages/loginpage.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/presentation.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(
      duration: Duration(seconds: 2),
      backgroundImageDecoration: BackgroundImageDecoration(
        fit: BoxFit.contain,
          image: AssetImage("Assets/logo/NEO E COMMERCE-01.png")),
      done: Done(loginpage()),
    );
  }
}
