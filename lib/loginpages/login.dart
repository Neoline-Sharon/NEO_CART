import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/screens/homepage/bottomnavigationcontroll.dart';
import 'package:neocart/controller/controller.dart';
import'package:http/http.dart'as http;
import 'forgot password.dart';

colors _Colors = colors();
final _myBox = Hive.box('sign_in');


// loginfun()async{
//   print("heloo");
//
//   final Body = {
//     'user':   controllerrmail.text,
//     'password':  '12356789',
//   };
//   final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/login_customer_with_password"),body:Body);
//   final data = jsonDecode(responce.body);
//   print(data);
// }

 loginfun(String email,String password,context) async {

  String uri = 'https://ecom.laurelss.com/Api/login_customer_with_password';

  final Body = {
    'user': email,
    'password': password,
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  if (responce.statusCode == 200) {
    print(responce.body);
    final data = jsonDecode(responce.body);
    if (data['status'] == 1) {
      _myBox.put(3, data['customer_id'].toString());
      _myBox.put(1, controllerrmail.text.toString());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));

      Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));

    }  else if (data['status'] == 2) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data")));
    }
  }else{
    throw("error");
  }
}

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
                  return null;
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
                  return null;
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
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>reenterpasspassword()));
               }, child: Text("Forgot password ?")),
              space,
              Center(
                  child: MaterialButton(
                    color: _Colors.darkblue,
                    onPressed: (){
                      // loginfun();
                      if(_formKey.currentState!.validate()){
                        loginfun(controllerrmail.text,controllerpassword.text,context);
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


