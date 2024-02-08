import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/Listviewbuilders/gridViewbuilder.dart';
import 'package:neocart/examplefile/list.dart';
import 'package:http/http.dart' as http;
import 'accountmodel.dart';
import 'addresspage.dart';
import 'orderpage.dart';

// void main(){
//   runApp(MaterialApp(
//     home: myaccount(),
//   ));
// }

List listviewpage = [
  oderpage(),
  exepage(),
  addresspage(),
  exepage(),
  exepage(),
  exepage(),
  exepage(),
  exepage(),
];
Accountmodel accountmodel = Accountmodel();

class exepage extends StatelessWidget {
  const exepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("exe")),
      body: Center(
        child: Text("exe"),
      ),
    );
  }
}

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

Stream account() async* {
  // print(customerid.toString());
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/my_dashboard?customer_id=${customerid}"));
  if (responce.statusCode == 200) {
    // print(customerid.toString());
    final data = jsonDecode(responce.body);
    // print(data);
    yield data['customer'];
  } else {
    print("error");
  }
}

List<AllAddress>alladresslist=[];

Stream AllAdresss() async* {
  // print(customerid.toString());
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/my_dashboard?customer_id=${customerid}"));
  if (responce.statusCode == 200) {
    // print(customerid.toString());
    final data = jsonDecode(responce.body);
    alladresslist.clear();
    if(alladresslist.isEmpty){
      for(Map i in data["all_address"]){
        alladresslist.add(AllAddress.fromJson(i));
      }
    }
    yield alladresslist;
  } else {
    print("error");
  }
}

 RemoveAdress(String adressid,context) async {
  final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/remove_delivery_address"),body: {
    "id":adressid,
  });
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
  } else {
    print("error");
  }
}

Stream Adresss() async* {
  // print(customerid.toString());
  final responce = await http.get(Uri.parse(
      "https://ecom.laurelss.com/Api/my_dashboard?customer_id=${customerid}"));
  if (responce.statusCode == 200) {
    // print(customerid.toString());
    final data = jsonDecode(responce.body);
    // print(data);
    yield data['address'];
  } else {
    print("error");
  }
}

class myaccount extends StatelessWidget {
  const myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    pavenav(pg) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pg));
    }

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     account();
      //   },
      //   child: Icon(Icons.add),
      // ),
      // body: FutureBuilder(
      //   future: account(),
      //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //
      //   },
      // ),
      body: StreamBuilder(
        stream: account(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return snapshot.data==null? Center(child: CircularProgressIndicator()) : Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space,
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("My Account",style: TextStyle(fontSize: 22),)
                  ],
                ),
              ),
              space,
              Container(
                  color: Colors.grey[300],
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 80,
                              color: Colors.grey[500],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(snapshot.data['customer_name'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                                Text(snapshot.data['customer_phone']),
                                Text(snapshot.data['customer_email'])
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 430,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listtile.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: ListTile(
                            onTap: () {pavenav(listviewpage[index]);},
                            dense: true,
                            visualDensity: VisualDensity(vertical: -3),
                            title: Text(listtile[index],
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                          ),
                        ),
                        Divider()
                      ],
                    );
                  },
                ),
              ),
              Center(
                child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))))),
                    onPressed: () {
                      account();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 110, right: 110),
                      child:
                      Text("Logout", style: TextStyle(color: Colors.black)),
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
