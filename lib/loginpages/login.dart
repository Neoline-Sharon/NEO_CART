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

TextEditingController controllerrmail    = TextEditingController();
TextEditingController controllerpassword = TextEditingController();

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


    Future<void> login() async {

      String uri = 'https://ecom.laurelss.com/Api/login_customer_with_password';

      final Body = {
        'user': controllerrmail.text,
        'password': controllerpassword.text,
      };

      final responce = await http.post(Uri.parse(uri), body: Body);
      if (responce.statusCode == 200) {
        // print(responce.body);
        final data = jsonDecode(responce.body);
        if (data['status'] == 1) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Succes")));
          Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));

        } else if (data['status'] == 3) {

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("password or email exist")));

        } else if (data['status'] == 2) {

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("incorrect password or email")));

        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something went wrong")));
        }
      }
    }


    Widget space = SizedBox(height: 10,);

    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(fontSize: 20,)),
              space,
              TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "please enter your email";
                  }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                },
                controller: controllerrmail ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Appuicontroll.textfieldheight,
                        horizontal: Appuicontroll.textfieldwidth),
                    hintText: "E-mail",
                    border: OutlineInputBorder()
                ),
              ),
              space,
              TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "please enter your password";
                  }else if (value.length < 6) {
                    return 'Password must be at least 8 characters long';
                  }
                },
                keyboardType: TextInputType.text,
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
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        login();
                      }
                    },
                    child: Padding(
                      padding: Appuicontroll.matirialbuttonpadding,
                      child: Text("Login",style: TextStyle(color: Colors.white)),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


