import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../controller/controller.dart';
import 'package:http/http.dart'as http;

// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       useMaterial3: false
//     ),
//     home: addaddress(),
//   ));
// }



class addaddress extends StatefulWidget {
  const addaddress({super.key});

  @override
  State<addaddress> createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  @override
  Widget build(BuildContext context) {
    final _myBox = Hive.box('sign_in');
    String customerid = _myBox.get(3).toString();
    final _formKey = GlobalKey<FormState>();

    TextEditingController controllername        = TextEditingController();
    TextEditingController controllerphonenumber = TextEditingController();
    TextEditingController controllerHouseName   = TextEditingController();
    TextEditingController controllercity        = TextEditingController();
    TextEditingController controllerlandmark    = TextEditingController();
    TextEditingController controllercountry     = TextEditingController();
    TextEditingController controllerpincode     = TextEditingController();

    addadress()async{

      final body = {
        "customer_id": customerid,
        "name":controllername.text,
        "phone":controllerphonenumber.text,
        "customer_address":controllerHouseName.text,
        "customer_city":controllercity.text,
        "customer_landmark":controllerlandmark.text,
        "country":controllercountry.text,
        "pincode":controllerpincode.text,
      };

      final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/add_address_guest"),body: body);
      if(responce.statusCode==200){
        final data = jsonDecode(responce.body);
        if(data["status"]==1){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["data"].toString())));
          Navigator.pop(context);
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error")));
      }else{
        print("error");
      }
    }

    
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Address"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your name";
                    }else if (value.length < 3) {
                      return 'Name must be at least three letters';
                    }
                    return null;
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
                      return "please enter your phonenumber";
                    }else if (!RegExp(r'^[789]\d{9}$').hasMatch(value)) {
                      return 'Please enter a valid  phone number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  autofocus: true,
                  controller: controllerphonenumber,
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
                      return "please enter your HouseName";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.streetAddress,
                  autofocus: true,
                  controller: controllerHouseName,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "House Name",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your city";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.streetAddress,
                  autofocus: true,
                  controller: controllercity,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "city",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your landmark";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.streetAddress,
                  autofocus: true,
                  controller: controllerlandmark,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "landmark",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your country";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.streetAddress,
                  autofocus: true,
                  controller: controllercountry,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "country",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "please enter your pincode";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  controller: controllerpincode,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Appuicontroll.textfieldheight,
                          horizontal: Appuicontroll.textfieldwidth),
                      hintText: "pincode",
                      border: OutlineInputBorder()),
                ),
                Appuicontroll.space,
                Appuicontroll.space,
                Center(
                  child: OutlinedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          addadress();
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 110, right: 110),
                        child:
                        Text("Add Address", style: TextStyle(color: Colors.black)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
