import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(num.toString()),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Cat(),
  ));
}
