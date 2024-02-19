import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'modelclass/orderclassmodel.dart';
import 'oderdetails page.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(useMaterial3: false),
//     home: oderpage(),
//   ));
// }

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

List<Order>Adresslist = [];

Future<List<Order>> Orderhistorylist() async {
  final responce = await http.get(
      Uri.parse('https://ecom.laurelss.com/Api/order_history?customer_id=${customerid}'));
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    Adresslist.clear();
    print(customerid.toString());
    if (Adresslist.isEmpty) {
      for (Map i in data['orders']['order']) {
        Adresslist.add(Order.fromJson(i));
      }
    }
    return Adresslist;
  } else {
    throw ("erorr");
  }
}

class oderpage extends StatefulWidget {
  const oderpage({super.key});

  @override
  State<oderpage> createState() => _oderpageState();
}

class _oderpageState extends State<oderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders", style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: Orderhistorylist(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.data==null? Center(child: CircularProgressIndicator(),) : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Adresslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
                      title: Text("Order Id : ${Adresslist[index].orderId.toString()}"),
                      subtitle: Text("Delivery date : ${Adresslist[index].orderDate.toString()}"),
                      children: [
                        Container(
                          color: Color(0xffECE8E8),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 32),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: Text(
                                            "Order Id : ${Adresslist[index].orderId.toString()}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Total Amount",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "${Adresslist[index].orderAmount.toString()}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "${Adresslist[index].orderDate.toString()}",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Paid by ${Adresslist[index].paymentMode.toString()}",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 21,
                                          width: 110,
                                          child: Center(
                                              child: Text("Delivery Address",
                                                  style: TextStyle(
                                                      fontSize: 13, color: Colors.white))),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(3),
                                              color: Color(0xff09BB1B)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(Adresslist[index].deliveryAddress.toString()),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        // Divider(
                                        //   thickness: 2,
                                        // ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //   MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text(
                                        //       "Delivery Address",
                                        //       style: TextStyle(
                                        //           fontSize: 10,
                                        //           fontWeight: FontWeight.bold,
                                        //           color: Color(0xff0287E7)),
                                        //     ),
                                        //     TextButton(
                                        //       onPressed: () {
                                        //         setState(() {
                                        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>ordedetailspage( oderid: Adresslist[index].orderId.toString(),)));
                                        //         });
                                        //       },
                                        //       child: Text(
                                        //         "View Details",
                                        //         style: TextStyle(
                                        //             fontSize: 10,
                                        //             fontWeight: FontWeight.bold,
                                        //             color: Color(0xff0287E7)),
                                        //       ),
                                        //     )
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                                ordedetailspage(oderid: Adresslist[index].orderId.toString(),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


