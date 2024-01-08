import 'package:flutter/material.dart';

class ScreenProgress extends StatelessWidget {

  final int ticks;
  final int num;
  final Color? color;

  ScreenProgress({required this.ticks, required this.num,required this.color});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
       for(int i = 0 ;i<num;i++)
         Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             tick1(),
             spacer(),
             line(),
           ],
         )
      ],
    );


  }

  Widget tick(bool isChecked){
    return isChecked?Icon(Icons.check_circle,color: color,size: 15,):Icon(Icons.radio_button_unchecked, color: color,size: 15);
  }

  Widget tick1() {
    return this.ticks>0?tick(true):tick(false);
  }
  Widget tick2() {
    return this.ticks>1?tick(true):tick(false);
  }
  Widget tick3() {
    return this.ticks>2?tick(true):tick(false);
  }
  Widget tick4() {
    return this.ticks>3?tick(true):tick(false);
  }

  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line() {
    return Container(
      color: color,
      height: 3.0,
      width: 50.0,
    );
  }
}