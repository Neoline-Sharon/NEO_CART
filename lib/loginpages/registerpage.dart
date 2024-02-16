import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/screens/homepage/bottomnavigationcontroll.dart';
import 'package:http/http.dart' as http;

pagenav(context) {Navigator.push(context,MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));}

colors _Colors = colors();

TextEditingController controllername      = TextEditingController();
TextEditingController controlleremail     = TextEditingController();
TextEditingController controllermobnumber = TextEditingController();
TextEditingController controllerpassword  = TextEditingController();

class registerpage extends StatefulWidget {
  const registerpage({super.key});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  final _formKey = GlobalKey<FormState>();
  final _myBox = Hive.box('sign_in');
  @override
  Widget build(BuildContext context) {

    Future<void> register() async {
      String uri = 'https://ecom.laurelss.com/Api/register_customer_with_password';

      final Body = {
        'name':   controllername.text,
        'phone':  controllermobnumber.text,
        'email':  controlleremail.text,
        'password': controllerpassword.text,
      };

      final responce = await http.post(Uri.parse(uri), body: Body);
      if (responce.statusCode == 200) {
        print(responce.body);
        final data = jsonDecode(responce.body);
        if(data['status']==1){
          _myBox.put(2, controllerpassword.text.toString());
          _myBox.put(1, controlleremail.text.toString());
          _myBox.put(3, data['id']);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));

          Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));

        } else if(data['status']==2){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
        }else if(data['status'] == 3){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
        }
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create an account",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your name";
                    }else if (value.length < 3) {
                      return 'Name must be at least three letters';
                    }
                  },
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  controller: controllername,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "Name",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your email";
                    }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  controller: controlleremail,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "E-mail",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your phonenumber";
                    }else if (!RegExp(r'^[789]\d{9}$').hasMatch(value)) {
                      return 'Please enter a valid  phone number';
                    }
                  },
                  keyboardType: TextInputType.phone,
                  autofocus: true,
                  controller: controllermobnumber,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "Mobile number",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your password";
                    }else if (value.length < 6) {
                      return 'Password must be at least 8 characters long';
                    }
                  },
                  keyboardType: TextInputType.text,
                  autofocus: true,
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
                        if(_formKey.currentState!.validate()){
                          register();
                        }
                      },
                      child: Padding(
                        padding: Appuicontroll.matirialbuttonpadding,
                        child: Text("Verify", style: TextStyle(color: Colors.white)),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
