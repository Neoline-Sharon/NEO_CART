import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MaterialApp(
    home: cat(),
  ));
}

Future OrderdetaileFUn() async {
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/my_carts?customer_id=64"));
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    return data;
  } else {
    return throw("error");
  }
}

class cat extends StatelessWidget {
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: OrderdetaileFUn(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Center(
            child: Text(snapshot.data.toString()),);
        },
      ),
    );
  }
}
