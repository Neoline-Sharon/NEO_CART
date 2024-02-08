import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../api/get/modellclass/MYcartsmodel.dart';
import'package:http/http.dart'as http;

List<Details> orderlist  = [];

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();




class ordedetailspage extends StatelessWidget {

  final String? oderid;

  const ordedetailspage({super.key,required this.oderid});

  Future<List<Details>>oderdetails() async {
    String Url = "https://ecom.laurelss.com/Api/my_order_details?order_id=${oderid}&customer_id=${customerid}";
    final responce = await http.get(Uri.parse(Url));
    if (responce.statusCode == 200) {
      final data = jsonDecode(responce.body);
      orderlist.clear();
      if(orderlist.isEmpty){
        for(Map i in data['details']) {
          orderlist.add(Details.fromJson(i));
        }
      }
      return orderlist;
    } else {
      throw ("errror");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Delivered Products"),
            ),
            FutureBuilder(
              future: oderdetails(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.data==null? Center(child: CircularProgressIndicator()) : ListView.builder(
                  shrinkWrap: true,
                  itemCount: orderlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){},
                      child: productcart(
                        productname: orderlist[index].productName.toString(),
                        prductprice: orderlist[index].sellingPrice.toString(),
                        productimage: NetworkImage(orderlist[index].productImage!.toString()),
                        productbrand: '',
                      ),
                    );
                  },);
              },
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Orders details", style: TextStyle(color: Colors.black)),
    //     elevation: 0,
    //     backgroundColor: Colors.white,
    //     iconTheme: IconThemeData(color: Colors.black),
    //   ),
    //   body: Center(
    //     child: Padding(
    //       padding: const EdgeInsets.all(15),
    //       child: Card(
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Text("Orders details"),
    //               ),
    //               FutureBuilder(
    //                 future: oderdetails(),
    //                 builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //                   return snapshot.data==null? Center(child: CircularProgressIndicator()) : ListView.builder(
    //                     shrinkWrap: true,
    //                     itemCount: orderlist.length,
    //                     itemBuilder: (BuildContext context, int index) {
    //                       return productcart(
    //                         productname: orderlist[index].productName.toString(),
    //                         prductprice: orderlist[index].sellingPrice.toString(),
    //                         productimage: NetworkImage(orderlist[index].productImage!.toString()),
    //                         productbrand: '',
    //                       );
    //                     },);
    //                 },
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class productcart extends StatelessWidget {
  final String? prductprice;
  final String? productname;
  final  ImageProvider? productimage;
  final String? productbrand;

  productcart(
      {super.key,
        required this.productname,
        required this.prductprice,
        required this.productimage,
        required this.productbrand});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffECE8E8)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: productimage!
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                prductprice!,
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                productname!,
                style: TextStyle(fontSize: 11, color: Color(0xff555454)),
              ),
              Text(
                productbrand!,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


