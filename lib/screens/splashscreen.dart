import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/loginpages/loginpage.dart';
import 'package:neocart/screens/homepage/bottomnavigationcontroll.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/presentation.dart';

// login Login = login();




class splashscreen extends StatefulWidget {
  splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  final _myBox = Hive.box('sign_in');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loginfun(_myBox.get(1),_myBox.get(2),context);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:[SystemUiOverlay.bottom]);
    return SplashView(
      duration: Duration(seconds: 2),
      backgroundImageDecoration: BackgroundImageDecoration(
        fit: BoxFit.contain,
          image: AssetImage("Assets/logo/NEO E COMMERCE-01.png")),
      done: _myBox.get(1)==null? Done(loginpage()) : Done(bottomnavigationcontroll())
    );
  }
}
