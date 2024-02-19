import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/examplefile/list.dart';
import '../cart/cart.dart';
import '../favorite/favorite.dart';
import '../myaccound/MYaccount.dart';
import '../shope/shop.dart';
import 'hoomepage.dart';

void main(){
  runApp(MaterialApp(
    home: bottomnavigationcontroll(),
  ));
}

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

colors _colors = colors();

List<dynamic> pages = [hoomepage(), shop(), favorite(), cart(), myaccount()];


class bottomnavigationcontroll extends StatefulWidget {
   bool? num;
  bottomnavigationcontroll({super.key, this.num});

  @override
  State<bottomnavigationcontroll> createState() => _bottomnavigationcontrollState();
}

class _bottomnavigationcontrollState extends State<bottomnavigationcontroll> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          index: widget.num == true ? 3 : _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              widget.num = false;
            }
            );
          },
          height: 60,
          items: icon,
          color: _colors.gray,
          buttonBackgroundColor: _colors.gray,
          backgroundColor: Colors.transparent,
        ),
        body: widget.num == true ? cart() : pages[_currentIndex],
      ),
    );

  }
}
