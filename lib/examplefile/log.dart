import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:neocart/examplefile/reg.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    home: cat(),
  ));
}

class cat extends StatelessWidget {
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllername = TextEditingController();
    TextEditingController controlleremail = TextEditingController();
    TextEditingController controllermobnum = TextEditingController();
    TextEditingController controllerpass = TextEditingController();

    Widget hi = SizedBox(
      height: 10,
    );

    apiget Apiget = apiget(
        name: controllername.text,
        num: controllermobnum.text,
        email: controlleremail.text,
        pass: controllerpass.text);

    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: "button1",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => dog()));
              },
              label: Text("LOGIN")),
          hi,
          FloatingActionButton(
            heroTag: "button2",
              onPressed: () {
                Apiget.reg(context);
                controllerpass.clear();
                controllermobnum.clear();
                controlleremail.clear();
                controllername.clear();
              },
              child: Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            hi,
            TextField(
              controller: controllername,
              decoration: InputDecoration(hintText: "name"),
            ),
            hi,
            TextField(
              controller: controlleremail,
              decoration: InputDecoration(hintText: "e-mail"),
            ),
            hi,
            TextField(
              controller: controllermobnum,
              decoration: InputDecoration(hintText: "Mob Num"),
            ),
            hi,
            TextField(
              controller: controllerpass,
              decoration: InputDecoration(hintText: "password"),
            ),
          ],
        ),
      ),
    );
  }
}

class apiget {
  final String? name;
  final String? num;
  final String? email;
  final String? pass;
  final String? user;

  apiget({
    this.user,
    this.name,
    this.num,
    this.email,
    this.pass,
  });

  String urireg = "https://ecom.laurelss.com/Api/register_customer_with_password";

  String urilog = "https://ecom.laurelss.com/Api/login_customer_with_password";

  regbody() {
    final body = {
      "name": name,
      "phone": num,
      "email": email,
      "password": pass,
      // Add other fields as needed
    };
    return body;
  }

  logbody() {
    final body = {
      "user": user,
      "password": pass,
    };
    return body;
  }

  reg(context) async {
    final responce = await http.post(Uri.parse(urireg), body: regbody());
    if (responce.statusCode == 200) {
      final data = jsonDecode(responce.body);
      print(data["status"]);
      print(data["message"]);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 10),content: Text(data["message"])));
      if(data["status"]==1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(
          SnackBar(
              duration: Duration(seconds: 10),
              content: Text("Something whent Worng")));
    }
  }

  log(context) async {
    final responce = await http.post(Uri.parse(urilog), body: logbody());
    if (responce.statusCode == 200) {
      final data = jsonDecode(responce.body);
      print(responce.body);
      print(data["status"]);
      print(data["data"]);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 10),content: Text(data["data"])));
      if(data["status"]==1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(
          SnackBar(
              duration: Duration(seconds: 10),
              content: Text("Something whent Worng")));
    }
  }
}
