import 'package:flutter/material.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/loginpages/login.dart';
import 'package:neocart/loginpages/registerpage.dart';

colors _colors = colors();

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;


    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(hi/3),
          child:  AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace: Image(
              image: AssetImage('Assets/logo/NEO E COMMERCE-01.png'),
              fit: BoxFit.values[1],
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(child: Text("Register"),),
                Tab(child: Text("Login"),)
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            registerpage(),
            login()
          ],
        ),
      ),
    );
  }
}
