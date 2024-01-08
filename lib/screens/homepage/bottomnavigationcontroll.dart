import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/examplefile/list.dart';
import 'package:neocart/screens/homepage/Drawer.dart';




// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(useMaterial3: false),
//     home: homepage(),
//   ));
// }

colors _colors = colors();
int _bot = 0;
class bottomnavigationcontroll extends StatefulWidget {
  const bottomnavigationcontroll({super.key});

  @override
  State<bottomnavigationcontroll> createState() => _bottomnavigationcontrollState();
}

class _bottomnavigationcontrollState extends State<bottomnavigationcontroll> {
  @override
  Widget build(BuildContext context) {

    Widget space = SizedBox(height: 10,);

    BoxBorder border = Border.all(strokeAlign: 1, width: 0.5);



    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _bot,
        onTap: (bot){
          setState(() {
            _bot=bot;
          });
        },
        height: 60,
        items: icon,
        color: _colors.gray,
        buttonBackgroundColor: _colors.gray,
        backgroundColor: Colors.transparent,
      ),
      body: pages[_bot],
    );
  }
}
