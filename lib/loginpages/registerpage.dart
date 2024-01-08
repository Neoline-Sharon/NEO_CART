import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/screens/homepage/bottomnavigationcontroll.dart';
import 'package:http/http.dart' as http;

pagenav(context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));
}

colors _Colors = colors();

class registerpage extends StatelessWidget {
  const registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllername = TextEditingController();
    TextEditingController controlleremail = TextEditingController();
    TextEditingController controllermobnumber = TextEditingController();
    TextEditingController controllerpassword = TextEditingController();

    Future<void> register() async {
      String uri =
          "https://ecom.laurelss.com/Api/register_customer_with_password";

      var register = {
        "name": controllername.text,
        "phone": controllermobnumber.text,
        "email": controlleremail.text,
        "password": controllerpassword.text,
      };

      final response = await http.post(
        Uri.parse(uri),
        body: jsonEncode(register),
      );

      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        print(data["status"]);
        print(data["message"]);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => bottomnavigationcontroll()));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => bottomnavigationcontroll()));
      }
    }

    pagenav() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create an account",
                style: TextStyle(
                  fontSize: 20,
                )),
            Appuicontroll.space,
            TextField(
              controller: controllername,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "Name",
                  border: OutlineInputBorder()),
            ),
            Appuicontroll.space,
            TextField(
              controller: controlleremail,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "E-mail",
                  border: OutlineInputBorder()),
            ),
            Appuicontroll.space,
            TextField(
              controller: controllermobnumber,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "Mobile number",
                  border: OutlineInputBorder()),
            ),
            Appuicontroll.space,
            TextField(
              controller: controllerpassword,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "password",
                  border: OutlineInputBorder()),
            ),
            Appuicontroll.space,
            Center(
                child: MaterialButton(
              color: _Colors.darkblue,
              onPressed: () {
                pagenav();
              },
              child: Padding(
                padding: Appuicontroll.matirialbuttonpadding,
                child: Text("Verify", style: TextStyle(color: Colors.white)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
