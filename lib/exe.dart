import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cat(),
  ));
}

class Cat extends StatelessWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Dog()));
        },
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}

class Dog extends StatelessWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        appBar: AppBar(),
        body: Text("Hai"),
      ),
    );
  }
}
