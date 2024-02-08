import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/screens/homepage/prductpage.dart';
import '../../api/get/apiallproductes.dart';
import '../favorite/favoritefunction.dart';

class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {

    Widget space2 = SizedBox(height: 10,);

    // return FutureBuilder(
    //   future: allproductes(),
    //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //
    //   },
    // );
    return StreamBuilder(
      stream: allproductes(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return snapshot.data == null
            ? Center(child: CircularProgressIndicator())
            : GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Allproducteslist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.5),
                itemBuilder: (BuildContext context, int index) {
                  // bool? value = Allproducteslist[index].isproductcliked;
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
                                        builder: (context) => productpage(
                                              num: index,
                                            )));
                              },
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Image(
                                          image: NetworkImage(
                                              Allproducteslist[index]
                                                  .productImage
                                                  .toString())),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (Allproducteslist[index]
                                                        .isWishlist ==
                                                    "0") {
                                                  addwishlist(
                                                      Allproducteslist[index]
                                                          .stockId
                                                          .toString(),
                                                      Allproducteslist[index]
                                                          .mrp
                                                          .toString(),
                                                      Allproducteslist[index]
                                                          .sellingPrice
                                                          .toString(),
                                                      customerid,
                                                      context);
                                                } else {
                                                  removewishlist(
                                                      customerid,
                                                      Allproducteslist[index]
                                                          .wishlistDetailsId
                                                          .toString(),
                                                      context);
                                                }
                                              });
                                            },
                                            child: snapshot.data == null
                                                ? CircularProgressIndicator()
                                                : Allproducteslist[index]
                                                            .isWishlist ==
                                                        "0"
                                                    ? Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.black,
                                                      )
                                                    : Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )),
                                      ),
                                    ),
                                  ],
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
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => productpage(num: index,)));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    productpage(
                                                      num: index,
                                                    )));
                                      },
                                      child: Text(
                                        Allproducteslist[index]
                                            .productName
                                            .toString(),
                                        style: TextStyle(fontSize: 15),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    space2,
                                    Row(
                                      children: [
                                        Text(
                                            '\u{20B9} ' +
                                                Allproducteslist[index]
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
                                              Allproducteslist[index]
                                                  .mrpp
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
                                    // space2,
                                    // Container(
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(4),
                                    //         border: Border.all(width: 1, color: Color(0xffE5E2E2))),
                                    //     width: double.infinity,
                                    //     height: 22,
                                    //     child: Padding(
                                    //       padding: const EdgeInsets.only(
                                    //           right: 8, left: 8),
                                    //       child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.spaceBetween,
                                    //         children: [
                                    //           Text(
                                    //             Allproducteslist[index]
                                    //                 .stockId
                                    //                 .toString(),
                                    //             style: TextStyle(
                                    //                 fontSize: 11,
                                    //                 fontWeight: FontWeight.bold),
                                    //           ),
                                    //           Icon(Icons.arrow_drop_down)
                                    //         ],
                                    //       ),
                                    //     )),
                                    space2,
                                    GestureDetector(
                                      onTap: () {
                                        buynow(
                                            customerid,
                                            Allproducteslist[index]
                                                .stockId
                                                .toString(),
                                            Allproducteslist[index]
                                                .mrpp
                                                .toString(),
                                            Allproducteslist[index]
                                                .sellingPrice
                                                .toString(),
                                            0,
                                            context);
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xff69ea19))),
                                          width: double.infinity,
                                          height: 40,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 8,
                                                  left: 8),
                                              child: Center(
                                                child: Text("ADD TO CART",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff69ea19))),
                                              ))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addwishlist(
                                          Allproducteslist[index]
                                              .stockId
                                              .toString(),
                                          Allproducteslist[index]
                                              .mrp
                                              .toString(),
                                          Allproducteslist[index]
                                              .sellingPrice
                                              .toString(),
                                          customerid,
                                          context);
                                    });
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.green,
                                        size: 38,
                                      ),
                                      Text(
                                          Allproducteslist[index]
                                              .percentage
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}

// class productmini extends StatefulWidget {
//   final List? list;
//   final String? networkimage;
//   final String? productname;
//   final String? sellingPrice;
//   final String? mrp;
//   void Function()? pagenave;
//   final int? itemcound;
//   final Future? future;
//
//   productmini(
//       {super.key,
//       required this.networkimage,
//       required this.productname,
//       required this.sellingPrice,
//       required this.mrp,
//       required this.pagenave,
//       required this.itemcound,
//       required this.future,
//       required  this.list
//       }
//       );
//
//   @override
//   State<productmini> createState() => _productminiState();
// }
//
// class _productminiState extends State<productmini> {
//   Widget space2 = SizedBox(
//     height: 10,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: widget.future,
//       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//         return snapshot.data == null
//             ? Center(child: CircularProgressIndicator())
//             : GridView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: widget.itemcound,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, childAspectRatio: 1 / 1.6),
//                 itemBuilder: (BuildContext context, int index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(4.5),
//                     child: Container(
//                       width: 159,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border:
//                               Border.all(color: Color(0xffE5E2E2), width: 1)),
//                       child: Stack(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(9),
//                             child: Container(
//                               child: GestureDetector(
//                                   onTap: widget.pagenave,
//                                   // onTap: (){
//                                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>productpage(num: index,)));
//                                   // },
//                                   child: Image(
//                                       image:
//                                           NetworkImage(widget.list![index]+ widget.networkimage))),
//                               height: 120,
//                               width: 144,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(
//                                       color: Color(0xffE5E2E2), width: 1)),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Padding(
//                               padding: const EdgeInsets.all(9),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Text(
//                                     widget.list![index]+widget.productname!,
//                                     style: TextStyle(fontSize: 15),
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                   space2,
//                                   Row(
//                                     children: [
//                                       Text('\u{20B9} ' + widget.list![index]+widget.sellingPrice!,
//                                           style: TextStyle(
//                                             fontSize: 11,
//                                             fontWeight: FontWeight.bold,
//                                           )),
//                                       SizedBox(
//                                         width: 9,
//                                       ),
//                                       Text(
//                                         '\u{20B9} ' + widget.list![index]+ widget.mrp!,
//                                         style: TextStyle(
//                                             decoration:
//                                                 TextDecoration.lineThrough,
//                                             fontSize: 11,
//                                             fontWeight: FontWeight.bold,
//                                             color: Color(0xffadadad)),
//                                       )
//                                     ],
//                                   ),
//                                   space2,
//                                   // Container(
//                                   //     decoration: BoxDecoration(
//                                   //         borderRadius: BorderRadius.circular(4),
//                                   //         border: Border.all(width: 1,color: Color(0xffE5E2E2))
//                                   //     ),
//                                   //     width: 144,
//                                   //     height: 22,
//                                   //     child: Padding(
//                                   //       padding: const EdgeInsets.only(right: 8,left: 8),
//                                   //       child: Row(
//                                   //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   //         children: [
//                                   //           Text(Allproducteslist[index].stockId.toString(),style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
//                                   //           Icon(Icons.arrow_drop_down)
//                                   //         ],
//                                   //       ),
//                                   //     )
//                                   // ),
//                                   space2,
//                                   GestureDetector(
//                                     onTap: widget.pagenave,
//                                     // onTap: (){
//                                     //   Navigator.push(context, MaterialPageRoute(builder: (context)=>productpage(num: index,)));
//                                     // },
//                                     child: Container(
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(4),
//                                             border: Border.all(
//                                                 width: 1,
//                                                 color: Color(0xff69ea19))),
//                                         width: 144,
//                                         height: 22,
//                                         child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 8, left: 8),
//                                             child: Center(
//                                               child: Text("ADD",
//                                                   style: TextStyle(
//                                                       fontSize: 11,
//                                                       color:
//                                                           Color(0xff69ea19))),
//                                             ))),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.topRight,
//                             child: Padding(
//                               padding: const EdgeInsets.all(15),
//                               child: GestureDetector(
//                                   onTap: () {
//                                     if (like[index] == true) {
//                                       addwishlist(
//                                           Allproducteslist[index]
//                                               .stockId
//                                               .toString(),
//                                           Allproducteslist[index]
//                                               .mrp
//                                               .toString(),
//                                           Allproducteslist[index]
//                                               .sellingPrice
//                                               .toString(),
//                                           "64");
//                                       setState(() {
//                                         like[index] = !like[index];
//                                       });
//                                     } else {
//                                       removewishlist(
//                                         "64",
//                                         Allproducteslist[index]
//                                             .stockId
//                                             .toString(),
//                                       );
//                                       setState(() {
//                                         like[index] = !like[index];
//                                       });
//                                     }
//                                   },
//                                   child: Icon(
//                                     Icons.favorite,
//                                     color:
//                                         like[index] ? Colors.black : Colors.red,
//                                   )),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//       },
//     );
//   }
// }
