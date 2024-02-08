import 'dart:convert';
import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'MYaccount.dart';
import 'addaddress.dart';

class addresspage extends StatefulWidget {
  const addresspage({super.key});

  @override
  State<addresspage> createState() => _addresspageState();
}

class _addresspageState extends State<addresspage> {
  @override
  Widget build(BuildContext context) {

    Widget space = SizedBox(height: 16,);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>addaddress()));
              },
              child: Text(
                "+ Add Address ",
                style: TextStyle(color: Color(0xff0287E7), fontSize: 12),
              )
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: StreamBuilder(
          // future: account(),
          stream: Adresss(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.data==null? Center(child: CircularProgressIndicator(),) : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 34),
                      child: Text("Addresses", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Text(
                      "Default Address",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 21,
                              width: 67,
                              child: Center(
                                  child: Text("DEFAULT",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white))),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Color(0xff09BB1B)),
                            ),
                            space,
                            Text(snapshot.data['name'].toString(),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            space,
                            snapshot.data['customer_address']==null? Text("add your details") :
                            Text(
                                "${snapshot.data['name']}${snapshot.data['last_name']}\n${snapshot.data['customer_address']}\n${snapshot.data['customer_city']},${snapshot.data['customer_landmark']}\n${snapshot.data['country']}\n${snapshot.data['customer_pincode']}",
                                style: TextStyle(fontSize: 12)),
                            space,
                            Text(
                              "Phone :  ${snapshot.data['phone'].toString()}",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            space,
                            Divider(
                              thickness: 1.5,
                            ),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Delete ",
                                      style: TextStyle(
                                          fontSize: 12, color: Color(0xffFF0000)),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addaddress()));
                                    },
                                    child: Text(
                                      snapshot.data['customer_address']==null? "add" : "Edit ",
                                      style: TextStyle(
                                          fontSize: 12, color: Color(0xff0287E7)),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  space,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Text(
                      "ALL Address",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  alladress()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class alladress extends StatefulWidget {
  const alladress({super.key});

  @override
  State<alladress> createState() => _alladressState();
}

class _alladressState extends State<alladress> {
  @override
  Widget build(BuildContext context) {
    Widget space = SizedBox(height: 16,);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: StreamBuilder(
        stream: AllAdresss(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return  SizedBox(
            height: 280,
            child: Row(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: alladresslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      // width: 250,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   height: 21,
                              //   width: 200,
                              //   child: Center(
                              //       child: Text("DEFAULT",
                              //           style: TextStyle(
                              //               fontSize: 13, color: Colors.white))),
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(3),
                              //       color: Color(0xff09BB1B)),
                              // ),
                              space,
                              Text(alladresslist[index].name.toString(),
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold)
                              ),
                              // space,
                              Text(alladresslist[index].addressId.toString(),
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold)
                              ),
                              // space,
                              // snapshot.data['customer_address']==null? Text("add your details") :
                              Text(
                                  "${alladresslist[index].name.toString()}${alladresslist[index].lastName.toString()}\n${alladresslist[index].customerAddress.toString()}\n${alladresslist[index].customerCity.toString()},${alladresslist[index].customerLandmark.toString()}\n${alladresslist[index].country.toString()}\n${alladresslist[index].customerPincode.toString()}",
                                  style: TextStyle(fontSize: 12)),
                              space,
                              Text(
                                "Phone :  ${alladresslist[index].phone.toString()}",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              space,
                              Divider(
                                thickness: 1.5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          RemoveAdress(alladresslist[index].addressId.toString(),context);
                                        });
                                      },
                                      child: Text(
                                        "Remove Address",
                                        style: TextStyle(
                                            fontSize: 12, color: Color(0xffFF0000)),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          currentAdress(alladresslist[index].addressId.toString(),context);
                                          // RemoveAdress(alladresslist[index].addressId.toString(),context);
                                        });
                                      },
                                      child: Text(
                                        "Save as Current Adress",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.green),
                                      )),
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  // TextButton(
                                  //     onPressed: () {
                                  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>addaddress()));
                                  //     },
                                  //     child: Text(
                                  //       snapshot.data['customer_address']==null? "add" : "Edit ",
                                  //       style: TextStyle(
                                  //           fontSize: 12, color: Color(0xff0287E7)),
                                  //     ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 250,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addaddress()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Center(
                          child: Icon(Icons.add,size: 50),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

currentAdress(String adressid,context) async {
  final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/set_delivery_checkout"),body: {
    "delid":adressid,
    "customer_id": customerid,
  });
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['msg'])));
  } else {
    print("error");
  }
}

