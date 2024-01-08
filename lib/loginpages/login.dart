import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:neocart/screens/homepage/bottomnavigationcontroll.dart';
import 'package:neocart/controller/controller.dart';
import'package:http/http.dart'as http;
colors _Colors = colors();

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {

    TextEditingController controllerrmail    = TextEditingController();
    TextEditingController controllerpassword = TextEditingController();

    loginget()async{
      var num = 0;
      String uri = "https://ecom.laurelss.com/Api/login_customer_with_password";
      var log = {
      "user":controllerrmail.text,
      "password":controllerpassword.text,
      };
      final responce = await http.post(Uri.parse(uri),body: jsonEncode(log));
      if(responce.statusCode==200){
        final data = jsonDecode(responce.body);
        setState(() {
          num = data["status"];
        });
        if(num==2){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationcontroll()));
        }else{
          print(responce.body);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["data"])));
          Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationcontroll()));
        }
      }
    }

    pagenav(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationcontroll()));
    }
    Widget space = SizedBox(height: 10,);



    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: TextStyle(fontSize: 20,)),
            space,
            TextField(
              controller: controllerrmail ,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "E-mail",
                  border: OutlineInputBorder()
              ),
            ),
            space,
            TextField(
              controller: controllerpassword,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Appuicontroll.textfieldheight,
                      horizontal: Appuicontroll.textfieldwidth),
                  hintText: "Password",
                  border: OutlineInputBorder()
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Forgot password ?")),
            space,
            Center(
                child: MaterialButton(
                  color: _Colors.darkblue,
                  onPressed: ()=>pagenav(),
                  child: Padding(
                    padding: Appuicontroll.matirialbuttonpadding,
                    child: Text("Login",style: TextStyle(color: Colors.white)),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}


