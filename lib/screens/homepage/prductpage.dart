import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../api/get/apiallproductes.dart';
import '../shope/shop.dart';
import 'Products.dart';
import 'package:http/http.dart'as http;
import 'bottomnavigationcontroll.dart';


final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();



Future addtocart(String customerid, String stockid,String price , String offerprice,context)async{

  final body = {
    "customer_id": customerid,
    "stock_id":stockid,
    "price": price,
    "offer_price": offerprice,
    "nos":"1",
    "buystatus":"0",
  };

  final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/add_to_cart"),body: body);
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    if(data["status"]==1){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["data"].toString())));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error")));
    }
  }else{
    print("error");
  }
}

void buynow(customerid,String stockid, String price, String offerprice,int nos,context) async {
  String uri = 'https://ecom.laurelss.com/Api/add_to_cart';

  final Body = {
    'customer_id': customerid,
    'stock_id': stockid,
    'price': price,
    'offer_price': offerprice,
    'nos' : nos.toString(),
    'buystatus':"1",
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  print(responce.body);
  if (responce.statusCode == 200) {
    print(responce.body);
    final data = jsonDecode(responce.body);
    if(data['status']==0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    }else if(data['status']==1){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    }
  }
}

void placeorder(paymentmethod,context) async {
  String uri = 'https://ecom.laurelss.com/Api/place_order';

  final Body = {
    'payment_method': paymentmethod,
    'customer_id': customerid,
    'delivery_charge': "0",
    'buy_status' : '0',
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  print(responce.body);
  if (responce.statusCode == 200) {
    print(responce.body);
    final data = jsonDecode(responce.body);
    if(data['status']==0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    }else if(data['status']==1){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    }
  }
}




class productpage extends StatefulWidget {
  final int? num;
  const productpage({super.key, required this.num});


  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {

  int count = 1;

  @override
  Widget build(BuildContext context) {

    Widget hi = SizedBox(height: 12,);

    TextStyle TextStyle12 = TextStyle(fontSize: 12);

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    height: 44,
                    minWidth: 56,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Color(0xffD9D9D9),
                    // Color(0xff434343)
                    onPressed: (){
                      setState(() {
                        if(count<=1){
                          count=count+1;
                        }
                        count=count-1;
                      }
                      );
                    },
                    child: Icon(Icons.remove,color: Color(0xff434343)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MaterialButton(
                    height: 44,
                    minWidth: 56,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Color(0xffD9D9D9),
                    // Color(0xff434343)
                    onPressed: (){},
                    child: Text(count.toString())
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MaterialButton(
                      height: 44,
                      minWidth: 56,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: Color(0xffD9D9D9),
                      // Color(0xff434343)
                      onPressed: (){
                        print(count.toString());
                        setState(() {
                          count= count+1;
                        });
                      },
                      child: Icon(Icons.add,color: Color(0xff434343))
                  ),
                ],
              ),
              // MaterialButton(
              //   height: 44,
              //   minWidth: 56,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              //   color: Color(0xffD9D9D9),
              //   onPressed: (){},child: Icon(Icons.share,color: Color(0xff434343)),
              // ),
              // MaterialButton(
              //   height: 44,
              //   minWidth: 56,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              //   color: Color(0xffD9D9D9),
              //   onPressed: (){
              //     addtocart(customerid,Allproducteslist[num!].stockId.toString(),Allproducteslist[num!].mrpp.toString(),Allproducteslist[num!].sellingPrice.toString(),context);
              //   },child: Icon(Icons.shopping_bag,color: Color(0xff434343)),
              // ),
              MaterialButton(
                height: 44,
                minWidth: 56,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.black,
                onPressed: ()async{
                  buynow(customerid,Allproducteslist[widget.num!].stockId.toString(),Allproducteslist[widget.num!].mrpp.toString(),Allproducteslist[widget.num!].sellingPrice.toString(),count,context);
                  catocoryfunction();
                  await Future.delayed(Duration(seconds: 3),(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationcontroll(num: true,)));
                  });
                },
                child: Row(
                 children: [
                   Icon(Icons.monetization_on,color: Colors.white),
                   SizedBox(width: 21,),
                   Text("Buy  Now",style: TextStyle(fontSize: 16,color: Colors.white),)
                ],
              ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                )),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_sharp)),
          ],
        ),
        body: SingleChildScrollView(
          // child: FutureBuilder(
          //   future: allproductes(),
          //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          //
          //   },)
          child: StreamBuilder(
            stream: allproductes(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(Allproducteslist[widget.num!].productImage.toString()))),
                            height: 227,
                            width: 328,
                          ),
                        ),
                        hi,
                        Text(Allproducteslist[widget.num!].productName.toString(),
                          style: TextStyle(fontSize: 20, color: Color(0xff555454)),
                        ),
                        hi,
                        Text(
                          Allproducteslist[widget.num!].urlName.toString(),
                          style: TextStyle(fontSize: 14, color: Color(0xff555454)),
                        ),
                        hi,
                        Container(
                          height: 20,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Color(0xff09BB1B)),
                          child: Center(
                            child: Text("4.8 | 6",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        hi,
                        Row(
                          children: [
                            Text(
                              Allproducteslist[widget.num!].sellingPrice.toString(),
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              Allproducteslist[widget.num!].mrpp.toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff555454),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                        Text(
                          "Price inclusive of all taxes.",
                          style: TextStyle(fontSize: 10, color: Color(0xff555454)),
                        ),
                        hi,
                      ],
                    ),
                  ),
                  // hi,
                  // Divider(
                  //   color: Color(0xffA8A5A5),
                  //   thickness: 8,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 30),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       hi,
                  //       Text(
                  //         "Color",
                  //         style: TextStyle(fontSize: 14),
                  //       ),
                  //       hi,
                  //       Text(
                  //         "Black",
                  //         style: TextStyle(fontSize: 10, color: Color(0xff555454)),
                  //       ),
                  //       hi,
                  //       Row(
                  //         children: [
                  //           CircleAvatar(
                  //             radius: 10,
                  //             backgroundColor: Colors.black,
                  //           ),
                  //           SizedBox(
                  //             width: 24,
                  //           ),
                  //           CircleAvatar(
                  //             radius: 10,
                  //             backgroundColor: Color(0xff000342),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  hi,
                  Divider(
                    color: Color(0xffA8A5A5),
                    thickness: 8,
                  ),
                  // hi,
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 30),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text("Delivery Details", style: TextStyle(fontSize: 13)),
                  //       Text("Check delivery date",
                  //           style:
                  //           TextStyle(fontSize: 11, color: Color(0xff18559B))),
                  //     ],
                  //   ),
                  // ),
                  // hi,
                  // Divider(
                  //   color: Color(0xffA8A5A5),
                  //   thickness: 8,
                  // ),
                  hi,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Product Details",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold)),
                        hi,
                        Text(Allproducteslist[widget.num!].productDescription.toString(),style: TextStyle12,),
                      ],
                    ),
                  ),
                  hi,
                  Divider(
                    color: Color(0xffA8A5A5),
                    thickness: 8,
                  ),
                  // hi,
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 30),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Ratings",
                  //         style: TextStyle(fontWeight: FontWeight.bold),
                  //       ),
                  //       hi,
                  //       Row(
                  //         children: [
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text("4.8", style: TextStyle(fontSize: 24)),
                  //               Text("6 Ratings", style: TextStyle(fontSize: 12))
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             width: 15,
                  //           ),
                  //           Container(
                  //             width: 1,
                  //             height: 78,
                  //             color: Colors.black,
                  //           ),
                  //           SizedBox(width: 8,),
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               rating(
                  //                 ratting: '5',
                  //                 value: 1, persentage: '83',
                  //               ),
                  //               rating(
                  //                 ratting: '4',
                  //                 value: 0.8, persentage: '16',
                  //               ),
                  //               rating(
                  //                 ratting: '3',
                  //                 value: 0.6, persentage: '0',
                  //               ),
                  //               rating(
                  //                 ratting: '2',
                  //                 value: 0.4, persentage: '0',
                  //               ),
                  //               rating(
                  //                 ratting: '1',
                  //                 value: 0.2, persentage: '0',
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // hi,
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 33),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Text("Customer Reviews",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  //       hi,
                  //       Row(
                  //         children: [
                  //           CircleAvatar(radius: 28,),
                  //           SizedBox(width: 16,),
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text("Roshan",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  //               SizedBox(height: 8,),
                  //               Icon(Icons.star,size: 15),
                  //               SizedBox(height: 8,),
                  //               Text("I have used products for Mokobara earlier as\n well and all of them have superior quality.\nThis backpack exceeds my expectations\nwith quality, utility and styling.",style: TextStyle9,)
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //       hi,
                  //       Row(
                  //         children: [
                  //           CircleAvatar(radius: 28,),
                  //           SizedBox(width: 16,),
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text("Sharon",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  //               SizedBox(height: 8,),
                  //               Icon(Icons.star,size: 15),
                  //               SizedBox(height: 8,),
                  //               Text("I have used products for Mokobara earlier as\n well and all of them have superior quality.\nThis backpack exceeds my expectations\nwith quality, utility and styling.",style: TextStyle9,)
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // hi,
                  // Divider(
                  //   color: Color(0xffA8A5A5),
                  //   thickness: 8,
                  // ),
                  products(),
                  SizedBox(height: 70,)
                ],
              );
            },
          ),
        )
    );
  }
}

class rating extends StatelessWidget {
  final String? ratting;
  final String? persentage;
  final double? value;

  const rating({super.key, required this.ratting, required this.value,required this.persentage});

  @override
  Widget build(BuildContext context) {
    Widget wi = SizedBox(
      width: 8,
    );
    return Row(
      children: [
        Text(
          ratting!,
          style: TextStyle(fontSize: 12),
        ),
        wi,
        Icon(
          Icons.star,
          size: 10,
        ),
        wi,
        SizedBox(
            width: 171,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(5),
              minHeight: 5,
              value: value,
            )
        ),
        wi,
        Text(persentage!,style: TextStyle(fontSize: 10),)
      ],
    );
  }
}
