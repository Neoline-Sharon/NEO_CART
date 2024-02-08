import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart'as http;
import '../prductpage.dart';
import 'categoryproductpage.dart';
import 'categorywisemodel.dart';

List<Categorywisemodel>catagrorypagelist = [];

catagorypage Catagorypage = catagorypage();

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

class catagorypage extends StatelessWidget {
  final String? n_um;
  const catagorypage({super.key,this.n_um});

  @override
  Widget build(BuildContext context) {

    Future<List<Categorywisemodel>> Catagoryfuntion() async {

      String uri = 'https://ecom.laurelss.com/Api/categorywise_products_ajax';

      final Body = {
        'type': 'category',
        'start': "0",
        'rowperpage':"1000",
        'sort': "1",
        'category': n_um
      };

      final responce = await http.post(Uri.parse(uri), body: Body);
      if (responce.statusCode == 200) {
        // print(responce.body);
        final data = jsonDecode(responce.body);
        for(Map i in data){
          catagrorypagelist.add(Categorywisemodel.fromJson(i));
        }
        return catagrorypagelist;
      }else{
        return catagrorypagelist;
      }
    }



    Widget space2 = SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:Text("Category",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder(
          future: Catagoryfuntion(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.data==null? Center(child: CircularProgressIndicator()) : GridView.builder(
              shrinkWrap: true,
              itemCount: catagrorypagelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.5),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>catogoryproductpage(num: index,)));
                    },
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
                              child: Image(image: NetworkImage(catagrorypagelist[index].productImage.toString())),
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
                                  Text(catagrorypagelist[index].productName.toString(),style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  space2,
                                  Row(
                                    children: [
                                      Text('\u{20B9} ' + catagrorypagelist[index].sellingPrice.toString(), style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,)),
                                      SizedBox(width: 9,),
                                      Text( '\u{20B9} ' + catagrorypagelist[index].mrpp.toString(),style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 11,fontWeight: FontWeight.bold,color: Color(
                                          0xffadadad)),)
                                    ],
                                  ),
                                  // space2,
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
                                  //           Text(catagrorypagelist[index].stockId.toString(),style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                  //           Icon(Icons.arrow_drop_down)
                                  //         ],
                                  //       ),
                                  //     )
                                  // ),
                                  space2,
                                  GestureDetector(
                                    onTap: () {
                                      buynow(customerid,catagrorypagelist[index].stockId.toString(),catagrorypagelist[index].mrpp.toString(),catagrorypagelist[index].sellingPrice.toString(),0,context);
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
                                                right: 8, left: 8),
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
                          )
                        ],
                      ),
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
