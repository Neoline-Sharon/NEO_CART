import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import'package:http/http.dart'as http;
import 'package:neocart/screens/shope/shopemodelexe.dart';
import '../homepage/prductpage.dart';

List<Shopemodelexe>shoplist=[];
List<int>num=[];

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

Future<List<Shopemodelexe>>catocoryfunction()async{
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/my_carts?customer_id=${_myBox.get(3)}"));
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    shoplist.clear();
    if(shoplist.isEmpty){
      for(Map i in data["cart"][0]['details']){
        shoplist.add(Shopemodelexe.fromJson(i));
        num.add(1);
      }
    }
    return shoplist;
  }else{
    return shoplist;
  }
}


Future removefromcart( String status,context)async{

  final body = {
    "id": status,
    "customer_id": _myBox.get(3),
  };
  
  final responce = await http.post(Uri.parse("https://ecom.laurelss.com/Api/remove_cart_product"),body: body);
  
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    shoplist.clear();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    return data;
  }
  

}

Stream OrderdetaileFUn()async*{
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/my_carts?customer_id=${customerid}"));
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    yield data;
  }else{
    yield throw("error");
  }
}



class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    Widget space2 = SizedBox(
      height: 10,
    );

    double hite = 35;
    double Widht = 0;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: (){
      //       // buynow(customerid,shoplist[widget.num!].stockId.toString(),shoplist[widget.num!].mrpp.toString(),shoplist[widget.num!].sellingPrice.toString(),count,context);
      //       // catocoryfunction();
      //       // await Future.delayed(Duration(seconds: 3),(){
      //       //   Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationcontroll(num: true,)));
      //       // });
      //     },
      //     label: Text("buy now")),
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder(
          future: catocoryfunction(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.data == null
                ? Center(child: Container(child: Image.asset("Assets/exeimages/WhatsApp Image 2024-01-25 at 15.21.35_570e4c1c.jpg"),))
                : GridView.builder(
                 shrinkWrap: true,
                 itemCount: shoplist.length,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2, childAspectRatio: 1 / 1.6),
                 itemBuilder: (BuildContext context, int index) {
                 return Padding(
                   padding: const EdgeInsets.all(4.5),
                  child: Container(
                    width: 159,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: Color(0xffE5E2E2), width: 1)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productpage(num: index,)
                                  )
                              );
                            },
                            child: Container(
                              child: Image(
                                  // image: AssetImage("Assets/icon/WhatsApp Image 2023-12-28 at 17.34.44_d25826b4.jpg")
                                  image: NetworkImage(shoplist[index].productImage.toString())
                              ),
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffE5E2E2), width: 1)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  shoplist[index].productName.toString(),
                                  style: TextStyle(fontSize: 15),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                space2,
                                Row(
                                  children: [
                                    Text(
                                        '\u{20B9} ' +
                                            shoplist[index]
                                                .sellingPrice
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      '\u{20B9} ' +
                                          shoplist[index]
                                              .itemOfferPrice
                                              .toString(),
                                      style: TextStyle(
                                          decoration:
                                          TextDecoration.lineThrough,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffadadad)),
                                    )
                                  ],
                                ),
                                space2,
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          removefromcart(shoplist[index].cartDetailsId.toString(),context);
                                          shoplist.removeAt(index);
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(4),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xff000000))),
                                          width: double.infinity,
                                          height: 40,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 8, left: 8),
                                              child: Center(
                                                child: Text("Remove From Cart",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                        Color(0xff000000))),
                                              )
                                          )
                                      ),
                                    ),
                                    // Row(
                                    //   children: [
                                    //     MaterialButton(
                                    //       height: hite,
                                    //       minWidth: Widht,
                                    //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    //       color: Color(0xffD9D9D9),
                                    //       // Color(0xff434343)
                                    //       onPressed: (){
                                    //         // buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                                    //         setState(() {
                                    //           if(num[index]<=1){
                                    //             num[index]=num[index]+1;
                                    //           }
                                    //           num[index]=num[index]-1;
                                    //         }
                                    //         );
                                    //       },
                                    //       child: Icon(Icons.remove,color: Color(0xff434343),size: 20),
                                    //     ),
                                    //     // SizedBox(
                                    //     //   width: Widht,
                                    //     // ),
                                    //     MaterialButton(
                                    //         height: hite,
                                    //         minWidth: Widht,
                                    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    //         color: Color(0xffD9D9D9),
                                    //         // Color(0xff434343)
                                    //         onPressed: (){},
                                    //         child: Text(num[index].toString())
                                    //     ),
                                    //     // SizedBox(
                                    //     //   width: Widht,
                                    //     // ),
                                    //     MaterialButton(
                                    //         height: hite,
                                    //         minWidth: Widht,
                                    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    //         color: Color(0xffD9D9D9),
                                    //         // Color(0xff434343)
                                    //         onPressed: (){
                                    //           // buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                                    //           setState(() {
                                    //             num[index]= num[index]+1;
                                    //           });
                                    //         },
                                    //         child: Icon(Icons.add,color: Color(0xff434343),size: 20,)
                                    //     ),
                                    //   ],
                                    // ),
                                    // GestureDetector(
                                    //   onTap: () {
                                    //     setState(() {
                                    //       buynow(customerid,shoplist[index].stockId.toString(),shoplist[index].sellingPrice.toString(),shoplist[index].sellingPrice.toString(),num[index],context);
                                    //       // removefromcart(shoplist[index].cartDetailsId.toString(),context);
                                    //       shoplist.removeAt(index);
                                    //     });
                                    //   },
                                    //   child: Container(
                                    //       decoration: BoxDecoration(
                                    //           borderRadius:
                                    //           BorderRadius.circular(4),
                                    //           border: Border.all(
                                    //               width: 1,
                                    //               color: Color(0xff000000))),
                                    //       width: double.infinity,
                                    //       height: 40,
                                    //       child: Padding(
                                    //           padding: const EdgeInsets.only(
                                    //               top: 10,
                                    //               bottom: 10,
                                    //               right: 8, left: 8),
                                    //           child: Center(
                                    //             child: Text("confirm item count",
                                    //                 style: TextStyle(
                                    //                     fontSize: 11,
                                    //                     color:
                                    //                     Color(0xff000000))),
                                    //           )
                                    //       )
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.topRight,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(15),
                        //     child: GestureDetector(
                        //         onTap: () {
                        //           // if (like[index] == true) {
                        //           //   addwishlist(
                        //           //       Allproducteslist[index]
                        //           //           .stockId
                        //           //           .toString(),
                        //           //       Allproducteslist[index]
                        //           //           .mrp
                        //           //           .toString(),
                        //           //       Allproducteslist[index]
                        //           //           .sellingPrice
                        //           //           .toString(),
                        //           //       "64");
                        //           //   setState(() {
                        //           //     like[index] = !like[index];
                        //           //   });
                        //           // } else {
                        //           //   removewishlist(
                        //           //     "64",
                        //           //     Allproducteslist[index]
                        //           //         .stockId
                        //           //         .toString(),
                        //           //   );
                        //           //   setState(() {
                        //           //     like[index] = !like[index];
                        //           //   });
                        //           // }
                        //         },
                        //         // child: Icon(
                        //         //   Icons.favorite,
                        //         //   // color:
                        //         //   // like[index] ? Colors.black : Colors.red,
                        //         // )
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
