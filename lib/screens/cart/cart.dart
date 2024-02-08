import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../homepage/bottomnavigationcontroll.dart';
import '../homepage/prductpage.dart';
import '../myaccound/MYaccount.dart';
import '../myaccound/addaddress.dart';
import '../myaccound/addresspage.dart';
import '../myaccound/orderpage.dart';
import '../shope/shop.dart';

// dynamic value = "1";

Widget space = SizedBox(
  height: 16,
);

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

Future buynow2(context, String delivery) async {
  final body = {
    "payment_method": delivery,
    "customer_id": _myBox.get(3),
    "delivery_charge": "0",
    "buy_status": "0"
  };

  final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/place_order"), body: body);

  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    print(data);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(data['msg'])));
    return data;
  }
}

String? paymentval = "";

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      catocoryfunction();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget hi = SizedBox(
      height: 24,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Cart", style: TextStyle(color: Colors.black)),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.card_travel,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                )),
          ],
        ),
        body: shoplist.isEmpty
            ? Center(
                child: Image.asset(
                    "Assets/exeimages/WhatsApp Image 2024-01-25 at 15.21.35_570e4c1c.jpg"))
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 29, vertical: 26),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // Text(
                              //   "Bag",
                              //   style: TextStyle(
                              //       fontSize: 16, fontWeight: FontWeight.bold),
                              // ),
                              // Text(
                              //   "(1 product)",
                              //   style: TextStyle(fontSize: 13),
                              // ),
                            ],
                          ),
                          hi,
                          FutureBuilder(
                            future: catocoryfunction(),
                            builder: (BuildContext context,
                                AsyncSnapshot<dynamic> snapshot) {
                              return snapshot.data == null
                                  ? Center(child: CircularProgressIndicator())
                                  : ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: shoplist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return cardproduct(
                                          image: NetworkImage(shoplist[index].productImage.toString()),
                                          productname: shoplist[index].productName.toString(),
                                          productdiscrp: "",
                                          quantity: shoplist[index].itemQuantity.toString(),
                                          sellingprice: shoplist[index].sellingPrice.toString(),
                                          offerprice: shoplist[index].itemTotal.toString(),
                                          remove: () {
                                            setState(() {
                                              removefromcart(shoplist[index].cartDetailsId.toString(),context);
                                              shoplist.removeAt(index);
                                              if (shoplist.isEmpty) {
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) =>
                                                        bottomnavigationcontroll()
                                                )
                                                );
                                              }
                                            });
                                          },
                                          addquntivy: num[index].toString(),
                                          increses: () {
                                          // buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                                          setState(() {
                                            num[index]= num[index]+1;
                                          });
                                        }, decrese: () {
                                          // buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                                          setState(() {
                                            if(num[index]<=1){
                                              num[index]=num[index]+1;
                                            }
                                            num[index]=num[index]-1;
                                          }
                                          );
                                        },
                                        );
                                      },
                                    );
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 7,
                      color: Color(0xffEDECEC),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 29,
                      ),
                      child: StreamBuilder(
                        stream: OrderdetaileFUn(),
                        // future: OrderdetaileFUn(),
                        builder: (BuildContext context,
                            AsyncSnapshot<dynamic> snapshot) {
                          return snapshot.data == null
                              ? Center(child: CircularProgressIndicator())
                              : Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    hi,
                                    Text(
                                      "Order Details",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    hi,
                                    payment(
                                      data1: 'Total Items',
                                      data2: snapshot.data['cart'][0]
                                              ["cart_count"]
                                          .toString(),
                                    ),
                                    // hi,
                                    // payment(
                                    //   data1: 'Bag Savings',
                                    //   data2: '3,700.00',
                                    // ),
                                    // hi,
                                    // payment(
                                    //   data1: 'Delivery Fee',
                                    //   data2: '00.00',
                                    // ),
                                    hi,
                                    payment(
                                      data1: 'Amount Payable ',
                                      data2: '\u{20B9} ' +
                                          snapshot.data['cart'][0]
                                                  ["cart_amnt"]
                                              .toString(),
                                      font: FontWeight.bold,
                                      num: 16,
                                    )
                                  ],
                                );
                        },
                      ),
                    ),
                    hi,
                    Divider(
                      thickness: 7,
                      color: Color(0xffEDECEC),
                    ),
                    hi,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RadioMenuButton(
                              value: "cod",
                              groupValue: paymentval,
                              onChanged: (value) {
                                setState(() {
                                  paymentval = value;
                                });
                              },
                              child: Text("Cash on delivery")),
                          RadioMenuButton(
                              value: "OnlinePayment",
                              groupValue: paymentval,
                              onChanged: (value) {
                                setState(() {
                                  paymentval = value;
                                });
                              },
                              child: Text("Online Payment"))
                        ],
                      ),
                    ),
                    hi,
                    Divider(
                      thickness: 7,
                      color: Color(0xffEDECEC),
                    ),
                    hi,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: StreamBuilder(
                        stream: Adresss(),
                        builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot) {
                          return snapshot.data == null ? Center(child: CircularProgressIndicator(),) : SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Text(
                                          "Addresses",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      hi,
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 21,
                                                  width: 67,
                                                  child: Center(
                                                      child: Text("DEFAULT", style: TextStyle(fontSize: 13,color: Colors.white))),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(3),
                                                      color:
                                                          Color(0xff09BB1B)),
                                                ),
                                                space,
                                                Text(
                                                  "name       " + snapshot.data['name'].toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                space,
                                                snapshot.data['customer_address'] == null ? Text("add your details")
                                                    : Text("${snapshot.data['name']}${snapshot.data['last_name']}\n${snapshot.data['customer_address']}\n${snapshot.data['customer_city']},${snapshot.data['customer_landmark']}\n${snapshot.data['country']}\n${snapshot.data['customer_pincode']}",
                                                        style: TextStyle(fontSize: 12)),
                                                space,
                                                Text(
                                                  "Phone :  ${snapshot.data['phone'].toString()}",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xffFF0000)),
                                                        )),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          addaddress()));
                                                        },
                                                        child: Text(
                                                          snapshot.data['customer_address'] == null
                                                              ? "add"
                                                              : "Edit ",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff0287E7)),
                                                        ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      hi,
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Text(
                                          "All Addresses",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      hi,
                                      alladress()
                                    ],
                                  ),
                                );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StreamBuilder(
                            stream: OrderdetaileFUn(),
                            // future: OrderdetaileFUn(),
                            builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot) {
                              return snapshot.data == null ? Center(child: CircularProgressIndicator()) : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                            '\u{20B9}'+
                                                snapshot.data['cart'][0]
                                                        ["cart_amnt"]
                                                    .toString(),
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        Text("View details",
                                            style: TextStyle(fontSize: 14)),
                                      ],
                                    );
                            },
                          ),
                          MaterialButton(
                            height: 44,
                            minWidth: 56,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            color: Colors.black,
                            onPressed: () {
                              placeorder(paymentval,context);
                            // buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                              if (paymentval == "") {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "select your payment method")));
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          content: Text(
                                              "Order is Successfull Complited"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,MaterialPageRoute(builder: (context) => oderpage()));
                                                },
                                                child: Text("view details")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigationcontroll()));
                                                },
                                                child: Text("Continue Shoping")),
                                          ],
                                        )
                                );
                                Future.delayed(Duration(seconds: 5),(){
                                  Navigator.pop(context);
                                  setState(() {
                                    shoplist.clear();
                                  });
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Proceed to Payment",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 95,
                    ),
                  ],
                ),
              ));
  }
}

class payment extends StatelessWidget {
  final String? data1;
  final String? data2;
  final Color? color;
  final FontWeight? font;
  final double? num;

  const payment(
      {super.key,
      required this.data1,
      required this.data2,
      this.color,
      this.font,
      this.num});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data1!,
          style: TextStyle(fontSize: num, fontWeight: font),
        ),
        Text(
          data2!,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }
}

class cardproduct extends StatefulWidget {
  final ImageProvider image;
  final String? productname;
  final String? productdiscrp;
  final String? quantity;
  final String? sellingprice;
  final String? offerprice;
  final String? addquntivy;
  final Function() remove;
  final Function() increses;
  final Function() decrese;

  const cardproduct(
      {super.key,
      required this.image,
      required this.productname,
      required this.productdiscrp,
      required this.quantity,
      required this.sellingprice,
      required this.offerprice,
      required this.remove, required this.increses, required this.decrese, this.addquntivy});

  @override
  State<cardproduct> createState() => _cardproductState();
}

class _cardproductState extends State<cardproduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(image: DecorationImage(image: widget.image)),
                height: 120,
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 155,
                      child: Text(
                        widget.productname!,
                        style: TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Text(
                    //   productdiscrp!,
                    //   style: TextStyle(fontSize: 13),
                    // ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 23,
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Qty", style: TextStyle(fontSize: 13)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(widget.addquntivy!),
                            SizedBox(
                              width: 5,
                            ),
                            // DropdownButton(
                            //     underline: SizedBox(),
                            //     style: TextStyle(
                            //         fontSize: 12, color: Colors.black),
                            //     value: value,
                            //     items: [
                            //       DropdownMenuItem(
                            //           value: "1", child: Text("1")),
                            //       DropdownMenuItem(
                            //           value: "2", child: Text("2")),
                            //       DropdownMenuItem(
                            //           value: "3", child: Text("3")),
                            //     ],
                            //     onChanged: (droupvalue) {
                            //       // setState(() {
                            //       //   value = droupvalue;
                            //       // });
                            //     }),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('\u{20B9} ' + widget.sellingprice!,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8,
                    ),
                    Text('\u{20B9} ' + widget.offerprice!,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA8A5A5),
                            decoration: TextDecoration.lineThrough)),
                  ],
                ),
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(onPressed: widget.remove, child: Text("Remove")),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       // Row(
          //       //   children: [
          //       //     MaterialButton(
          //       //       height: hite,
          //       //       minWidth: Widht,
          //       //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //       //       color: Color(0xffD9D9D9),
          //       //       onPressed: widget.decrese,
          //       //       // Color(0xff434343)
          //       //       // onPressed: (){
          //       //       //   buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
          //       //       //   setState(() {
          //       //       //     if(num[index]<=1){
          //       //       //       num[index]=num[index]+1;
          //       //       //     }
          //       //       //     num[index]=num[index]-1;
          //       //       //   }
          //       //       //   );
          //       //       // },
          //       //       child: Icon(Icons.remove,color: Color(0xff434343),size: 20),
          //       //     ),
          //       //     // SizedBox(
          //       //     //   width: Widht,
          //       //     // ),
          //       //     MaterialButton(
          //       //         height: hite,
          //       //         minWidth: Widht,
          //       //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //       //         color: Color(0xffD9D9D9),
          //       //         // Color(0xff434343)
          //       //         onPressed: (){},
          //       //         // child: Text(num[index].toString())
          //       //       child: Text(widget.quantity.toString()),
          //       //     ),
          //       //     // SizedBox(
          //       //     //   width: Widht,
          //       //     // ),
          //       //     MaterialButton(
          //       //         height: hite,
          //       //         minWidth: Widht,
          //       //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //       //         color: Color(0xffD9D9D9),
          //       //         onPressed: widget.increses,
          //       //         // Color(0xff434343)
          //       //         // onPressed: (){
          //       //         //    buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
          //       //         //    setState(() {
          //       //         //      num[index]= num[index]+1;
          //       //         //    });
          //       //         //  },
          //       //         child: Icon(Icons.add,color: Color(0xff434343),size: 20,)
          //       //     ),
          //       //   ],
          //       // ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

double hite = 35;
double Widht = 0;


