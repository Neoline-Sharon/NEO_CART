import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart'as http;
import '../homepage/prductpage.dart';
import 'Favoratemodel.dart';
import 'favoritefunction.dart';

final _myBox = Hive.box('sign_in');
final customerid = _myBox.get(3);

// void main(){
//   runApp(MaterialApp(
//     home: MaterialApp(
//       home: favorite(),
//     ),
//   ));
// }

List<Favoratemodel>Favoratelist = [];

Future<List<Favoratemodel>>favoradefunction() async {

  String uri = 'https://ecom.laurelss.com/Api/my_wishlist?customer_id=${customerid}';

  final responce = await http.post(Uri.parse(uri));
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    Favoratelist.clear();
    if(Favoratelist.isEmpty){
      for(Map i in data['wishlist'][0]['details']){
        Favoratelist.add(Favoratemodel.fromJson(i));
      }
    }
    return Favoratelist;
  }else{
    throw Exception('Failed to load data');
  }
}



class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {


    Widget space2 = SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("favorites",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder(
          future: favoradefunction(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.data==null? Center(child: CircularProgressIndicator(),): GridView.builder(
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Favoratelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.5),
                  child: Container(
                    width: 159,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffE5E2E2),width: 1)
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9),
                          child: Container(
                            child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>productpage(num: index,)));
                                },
                                child: Image(image: NetworkImage(Favoratelist[index].productImage.toString()))),
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffE5E2E2),width: 1)
                            ),
                          ),
                        ),
                        Align(
                          alignment:Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(Favoratelist[index].productName.toString(),style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                space2,
                                Row(
                                  children: [
                                    Text('\u{20B9} ' + Favoratelist[index].itemOfferPrice.toString(), style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,)),
                                    SizedBox(width: 9,),
                                    Text( '\u{20B9} ' + Favoratelist[index].sellingPrice.toString(),style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 11,fontWeight: FontWeight.bold,color: Color(
                                        0xffadadad)),)
                                  ],
                                ),
                                space2,
                                // Container(
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(4),
                                //         border: Border.all(width: 1,color: Color(0xffE5E2E2))
                                //     ),
                                //     width: double.infinity,
                                //     height: 22,
                                //     child: Padding(
                                //       padding: const EdgeInsets.only(right: 8,left: 8),
                                //       child: Row(
                                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //         children: [
                                //           Text(Favoratelist[index].productId.toString(),style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                //           Icon(Icons.arrow_drop_down)
                                //         ],
                                //       ),
                                //     )
                                // ),
                                space2,
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      removewishlist(customerid,Favoratelist[index].wishlistDetailsId.toString(),context);
                                      Favoratelist.removeAt(index);
                                    }
                                    );
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(4),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xff69ea19))),
                                      width: double.infinity,
                                      // height: 40,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 8, left: 8),
                                          child: Center(
                                            child: Text(
                                                // Favoratelist[index].stockId.toString(),
                                                "Remove From  Wishlist",
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
                        // Align(
                        //   alignment: Alignment.topRight,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(15),
                        //     child: GestureDetector(
                        //         onTap: (){
                        //           // if(like[index]==true){
                        //           //   addwishlist(
                        //           //       Allproducteslist[index].stockId.toString(),
                        //           //       Allproducteslist[index].mrp.toString(),
                        //           //       Allproducteslist[index].sellingPrice.toString(),
                        //           //       "64"
                        //           //   );
                        //           //   setState(() {
                        //           //     like[index]=!like[index];
                        //           //   });
                        //           // }else{
                        //           //   removewishlist("64",Allproducteslist[index].stockId.toString(),);
                        //           //   setState(() {
                        //           //     like[index]=!like[index];
                        //           //   }
                        //           //   );
                        //           // }
                        //         },
                        //         // child: Icon(Icons.favorite,color: like[index]?  Colors.black : Colors.red,)),
                        //   ),
                        // )
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