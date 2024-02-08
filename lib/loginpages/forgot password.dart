import 'dart:convert';
import 'package:flutter/material.dart';
import '../controller/controller.dart';
import'package:http/http.dart'as http;


colors _Colors = colors();

// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       useMaterial3: false
//     ),
//     home: forgotpassword(),
//   ));
// }

TextEditingController controllerrmail    = TextEditingController();

forgotpasfun(String email,context)async{

  String? uri = "https://ecom.laurelss.com/Api/forgot-password-send";

  final Body = {
    'email': email,
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  print(responce.body);
  if (responce.statusCode == 200) {
    print(responce.body);
    final data = jsonDecode(responce.body);
    if (data['status'] == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    } else if (data['status'] == 1) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>reenterpasspassword()));
    }
  }
}





// class forgotpassword extends StatelessWidget {
//   forgotpassword({super.key});
//   final _formKey = GlobalKey<FormState>();
//   Widget space = SizedBox(height: 10,);
//
//   TextEditingController controllerrmail    = TextEditingController();
//   TextEditingController controllerpassword = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("forgot password",style: TextStyle(color: Colors.black)),
//         elevation: 0,
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(15),
//               child: SingleChildScrollView(
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Login",style: TextStyle(fontSize: 20,)),
//                       space,
//                       TextFormField(
//                         validator: (value){
//                           if(value==null || value.isEmpty){
//                             return "please enter your email";
//                           }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
//                             return 'Please enter a valid email address';
//                           }
//                           return null;
//                         },
//                         controller: controllerrmail ,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                             contentPadding: EdgeInsets.symmetric(
//                                 vertical: Appuicontroll.textfieldheight,
//                                 horizontal: Appuicontroll.textfieldwidth),
//                             hintText: "E-mail",
//                             border: OutlineInputBorder()
//                         ),
//                       ),
//                       // space,
//                       // TextFormField(
//                       //   validator: (value){
//                       //     if(value==null || value.isEmpty){
//                       //       return "please enter your password";
//                       //     }else if (value.length < 6) {
//                       //       return 'Password must be at least 8 characters long';
//                       //     }
//                       //   },
//                       //   keyboardType: TextInputType.text,
//                       //   controller: controllerpassword,
//                       //   obscureText: true,
//                       //   decoration: InputDecoration(
//                       //       contentPadding: EdgeInsets.symmetric(
//                       //           vertical: Appuicontroll.textfieldheight,
//                       //           horizontal: Appuicontroll.textfieldwidth),
//                       //       hintText: "Password",
//                       //       border: OutlineInputBorder()
//                       //   ),
//                       // ),
//                       // TextButton(onPressed: (){}, child: Text("Forgot password ?")),
//                       space,
//                       Center(
//                           child: MaterialButton(
//                             color: _Colors.darkblue,
//                             onPressed: (){
//                               if(_formKey.currentState!.validate()){
//                                forgotpasfun(controllerrmail.text,context);
//                               }
//                             },
//                             child: Padding(
//                               padding: Appuicontroll.matirialbuttonpadding,
//                               child: Text("Login",style: TextStyle(color: Colors.white)),
//                             ),
//                           )
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class reenterpasspassword extends StatelessWidget {
  reenterpasspassword({super.key});
  final _formKey = GlobalKey<FormState>();
  Widget space = SizedBox(height: 10,);

  TextEditingController controllerrmail    = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("enter your password",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                      // space,
                      // TextFormField(
                      //   validator: (value){
                      //     if(value==null || value.isEmpty){
                      //       return "please enter your password";
                      //     }else if (value.length < 6) {
                      //       return 'Password must be at least 8 characters long';
                      //     }
                      //   },
                      //   keyboardType: TextInputType.text,
                      //   controller: controllerpassword,
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //       contentPadding: EdgeInsets.symmetric(
                      //           vertical: Appuicontroll.textfieldheight,
                      //           horizontal: Appuicontroll.textfieldwidth),
                      //       hintText: "Password",
                      //       border: OutlineInputBorder()
                      //   ),
                      // ),
                      // TextButton(onPressed: (){}, child: Text("Forgot password ?")),
                      space,
                      Center(
                          child: MaterialButton(
                            color: _Colors.darkblue,
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                // forgotpasfun(controllerrmail.text,context);
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
            ),
          ),
        ),
      ),
    );
  }
}
