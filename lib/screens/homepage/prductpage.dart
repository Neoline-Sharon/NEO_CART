import 'package:flutter/material.dart';
import '../../api/get/apiallproductes.dart';
import 'Products.dart';

class productpage extends StatelessWidget {
  final int? num;
  const productpage({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    Widget hi = SizedBox(
      height: 12,
    );
    TextStyle TextStyle12 = TextStyle(fontSize: 12);
    TextStyle TextStyle9 = TextStyle(fontSize: 9);
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                height: 44,
                minWidth: 56,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Color(0xffD9D9D9),
                onPressed: (){},child: Icon(Icons.share,color: Color(0xff434343)),
              ),
              MaterialButton(
                height: 44,
                minWidth: 56,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Color(0xffD9D9D9),
                onPressed: (){},child: Icon(Icons.favorite,color: Color(0xff434343)),
              ),
              MaterialButton(
                height: 44,
                minWidth: 56,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.black,
                onPressed: (){},child: Row(
                children: [
                  Icon(Icons.card_travel_sharp,color: Colors.white),
                  SizedBox(width: 21,),
                  Text("Add To Bag",style: TextStyle(fontSize: 16,color: Colors.white),)
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
          child: FutureBuilder(
            future: allproductes(),
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
                                  image: NetworkImage(Allproducteslist[num!].productImage.toString()))),
                          height: 227,
                          width: 328,
                        ),
                      ),
                      hi,
                      Text(Allproducteslist[num!].productName.toString(),
                        style: TextStyle(fontSize: 20, color: Color(0xff555454)),
                      ),
                      hi,
                      Text(
                        Allproducteslist[num!].urlName.toString(),
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
                            Allproducteslist[num!].sellingPrice.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            Allproducteslist[num!].mrpp.toString(),
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
                hi,
                Divider(
                  color: Color(0xffA8A5A5),
                  thickness: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hi,
                      Text(
                        "Color",
                        style: TextStyle(fontSize: 14),
                      ),
                      hi,
                      Text(
                        "Black",
                        style: TextStyle(fontSize: 10, color: Color(0xff555454)),
                      ),
                      hi,
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff000342),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                hi,
                Divider(
                  color: Color(0xffA8A5A5),
                  thickness: 8,
                ),
                hi,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Details", style: TextStyle(fontSize: 13)),
                      Text("Check delivery date",
                          style:
                          TextStyle(fontSize: 11, color: Color(0xff18559B))),
                    ],
                  ),
                ),
                hi,
                Divider(
                  color: Color(0xffA8A5A5),
                  thickness: 8,
                ),
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
                      Text(Allproducteslist[num!].productDescription.toString(),style: TextStyle12,),
                    ],
                  ),
                ),
                hi,
                Divider(
                  color: Color(0xffA8A5A5),
                  thickness: 8,
                ),
                hi,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ratings",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      hi,
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("4.8", style: TextStyle(fontSize: 24)),
                              Text("6 Ratings", style: TextStyle(fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 1,
                            height: 78,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              rating(
                                ratting: '5',
                                value: 1, persentage: '83',
                              ),
                              rating(
                                ratting: '4',
                                value: 0.8, persentage: '16',
                              ),
                              rating(
                                ratting: '3',
                                value: 0.6, persentage: '0',
                              ),
                              rating(
                                ratting: '2',
                                value: 0.4, persentage: '0',
                              ),
                              rating(
                                ratting: '1',
                                value: 0.2, persentage: '0',
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                hi,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Customer Reviews",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                      hi,
                      Row(
                        children: [
                          CircleAvatar(radius: 28,),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Roshan",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                              SizedBox(height: 8,),
                              Icon(Icons.star,size: 15),
                              SizedBox(height: 8,),
                              Text("I have used products for Mokobara earlier as\n well and all of them have superior quality.\nThis backpack exceeds my expectations\nwith quality, utility and styling.",style: TextStyle9,)
                            ],
                          )
                        ],
                      ),
                      hi,
                      Row(
                        children: [
                          CircleAvatar(radius: 28,),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sharon",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                              SizedBox(height: 8,),
                              Icon(Icons.star,size: 15),
                              SizedBox(height: 8,),
                              Text("I have used products for Mokobara earlier as\n well and all of them have superior quality.\nThis backpack exceeds my expectations\nwith quality, utility and styling.",style: TextStyle9,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                hi,
                Divider(
                  color: Color(0xffA8A5A5),
                  thickness: 8,
                ),
                products(),
                SizedBox(height: 70,)
              ],
            );
            },)
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
