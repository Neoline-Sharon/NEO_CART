import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../../controller/controller.dart';
import 'package:http/http.dart'as http;

final _myBox = Hive.box('sign_in');
final customer_id = _myBox.get(3);

TextEditingController controllername      = TextEditingController();
TextEditingController controllerlastname      = TextEditingController();
// TextEditingController controlleremail     = TextEditingController();
// TextEditingController controllermobnumber = TextEditingController();
// TextEditingController controllerpassword  = TextEditingController();

updateprofile(context)async{
  final responce = await http.post(Uri.parse('https://ecom.laurelss.com/Api/update_profile'),
      body: {
        'customer_id': customer_id,
        'name': controllername.text,
        'last_name': controllerlastname.text
      }
  );

  if(responce.statusCode==200){
    print(responce.body);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("profile is changed")));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error')));
  }


}

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => editprofileState();
}

class editprofileState extends State<editprofile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Edit account",
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
                    return "please enter your name";
                  }else if (value.length < 3) {
                    return 'Name must be at least three letters';
                  }
                },
                keyboardType: TextInputType.name,
                autofocus: true,
                controller: controllerlastname,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Appuicontroll.textfieldheight,
                        horizontal: Appuicontroll.textfieldwidth),
                    hintText: "Last Name",
                    border: OutlineInputBorder()),
              ),
              Appuicontroll.space,
              // TextFormField(
              //   validator: (value){
              //     if(value==null || value.isEmpty){
              //       return "please enter your phonenumber";
              //     }else if (!RegExp(r'^[789]\d{9}$').hasMatch(value)) {
              //       return 'Please enter a valid  phone number';
              //     }
              //   },
              //   keyboardType: TextInputType.phone,
              //   autofocus: true,
              //   controller: controllermobnumber,
              //   decoration: InputDecoration(
              //       contentPadding: EdgeInsets.symmetric(
              //           vertical: Appuicontroll.textfieldheight,
              //           horizontal: Appuicontroll.textfieldwidth),
              //       hintText: "Mobile number",
              //       border: OutlineInputBorder()),
              // ),
              // Appuicontroll.space,
              // TextFormField(
              //   validator: (value){
              //     if(value==null || value.isEmpty){
              //       return "please enter your password";
              //     }else if (value.length < 6) {
              //       return 'Password must be at least 8 characters long';
              //     }
              //   },
              //   keyboardType: TextInputType.text,
              //   autofocus: true,
              //   controller: controllerpassword,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //       contentPadding: EdgeInsets.symmetric(
              //           vertical: Appuicontroll.textfieldheight,
              //           horizontal: Appuicontroll.textfieldwidth),
              //       hintText: "password",
              //       border: OutlineInputBorder()),
              // ),
              // Appuicontroll.space,
              Center(
                  child: MaterialButton(
                    color: Color(0xff003159),
                    // color: _Colors.darkblue,
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        // register();
                        setState(() {
                          updateprofile(context);
                          controllerlastname.clear();
                          controllername.clear();
                          Navigator.pop(context);
                        });
                      }
                    },
                    child: Padding(
                      padding: Appuicontroll.matirialbuttonpadding,
                      child: Text("Save Changes", style: TextStyle(color: Colors.white)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: Center(
    //     child: Card(
    //       child: Padding(
    //         padding: const EdgeInsets.all(15),
    //         child: Form(
    //           key: _formKey,
    //           child: Center(
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text("Edit account",
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                     )),
    //                 Appuicontroll.space,
    //                 TextFormField(
    //                   validator: (value){
    //                     if(value==null || value.isEmpty){
    //                       return "please enter your name";
    //                     }else if (value.length < 3) {
    //                       return 'Name must be at least three letters';
    //                     }
    //                   },
    //                   keyboardType: TextInputType.name,
    //                   autofocus: true,
    //                   controller: controllername,
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.symmetric(
    //                           vertical: Appuicontroll.textfieldheight,
    //                           horizontal: Appuicontroll.textfieldwidth),
    //                       hintText: "Name",
    //                       border: OutlineInputBorder()),
    //                 ),
    //                 Appuicontroll.space,
    //                 TextFormField(
    //                   validator: (value){
    //                     if(value==null || value.isEmpty){
    //                       return "please enter your email";
    //                     }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
    //                       return 'Please enter a valid email address';
    //                     }
    //                   },
    //                   keyboardType: TextInputType.emailAddress,
    //                   autofocus: true,
    //                   controller: controlleremail,
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.symmetric(
    //                           vertical: Appuicontroll.textfieldheight,
    //                           horizontal: Appuicontroll.textfieldwidth),
    //                       hintText: "E-mail",
    //                       border: OutlineInputBorder()),
    //                 ),
    //                 Appuicontroll.space,
    //                 TextFormField(
    //                   validator: (value){
    //                     if(value==null || value.isEmpty){
    //                       return "please enter your phonenumber";
    //                     }else if (!RegExp(r'^[789]\d{9}$').hasMatch(value)) {
    //                       return 'Please enter a valid  phone number';
    //                     }
    //                   },
    //                   keyboardType: TextInputType.phone,
    //                   autofocus: true,
    //                   controller: controllermobnumber,
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.symmetric(
    //                           vertical: Appuicontroll.textfieldheight,
    //                           horizontal: Appuicontroll.textfieldwidth),
    //                       hintText: "Mobile number",
    //                       border: OutlineInputBorder()),
    //                 ),
    //                 Appuicontroll.space,
    //                 TextFormField(
    //                   validator: (value){
    //                     if(value==null || value.isEmpty){
    //                       return "please enter your password";
    //                     }else if (value.length < 6) {
    //                       return 'Password must be at least 8 characters long';
    //                     }
    //                   },
    //                   keyboardType: TextInputType.text,
    //                   autofocus: true,
    //                   controller: controllerpassword,
    //                   obscureText: true,
    //                   decoration: InputDecoration(
    //                       contentPadding: EdgeInsets.symmetric(
    //                           vertical: Appuicontroll.textfieldheight,
    //                           horizontal: Appuicontroll.textfieldwidth),
    //                       hintText: "password",
    //                       border: OutlineInputBorder()),
    //                 ),
    //                 Appuicontroll.space,
    //                 Center(
    //                     child: MaterialButton(
    //                       // color: _Colors.darkblue,
    //                       onPressed: () {
    //                         if(_formKey.currentState!.validate()){
    //                           // register();
    //                         }
    //                       },
    //                       child: Padding(
    //                         padding: Appuicontroll.matirialbuttonpadding,
    //                         child: Text("Verify", style: TextStyle(color: Colors.white)),
    //                       ),
    //                     )),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}