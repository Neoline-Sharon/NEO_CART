import 'package:flutter/material.dart';
import 'package:neocart/examplefile/log.dart';

class dog extends StatelessWidget {
  const dog({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController controlleruser = TextEditingController();
    TextEditingController controllerpassword = TextEditingController();

    Widget hi = SizedBox(height: 10,);

    apiget Apiget = apiget(
      user: controlleruser.text,
      pass: controllerpassword.text,
    );


    return Scaffold(
      appBar: AppBar(
        title: Text("API LOG"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Apiget.log(context);},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controlleruser ,
              decoration: InputDecoration(
                  hintText: "e-mail"
              ),
            ),
            hi,
            TextField(
              controller: controllerpassword,
              decoration: InputDecoration(
                  hintText: "password"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
