import 'package:flutter/material.dart';

dynamic value = "1";

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    Widget hi = SizedBox(
      height: 24,
    );
    return Scaffold(
        appBar: AppBar(
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
                  Icons.favorite,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 26),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Bag",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(1 product)",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    hi,
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/exeimages/bagimage/nike-01.webp"))),
                                height: 120,
                                width: 120,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      "Men Logo Print Backpack",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(height: 8,),
                                    Container(
                                      height: 23,
                                      decoration: BoxDecoration(
                                        color: Color(0xffEAEAEA),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4,),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("Qty",style: TextStyle(fontSize: 13)),
                                            SizedBox(width: 5,),
                                            DropdownButton(
                                              underline: SizedBox(),
                                              style: TextStyle(fontSize: 12,color: Colors.black),
                                                value: value,
                                                items: [
                                                  DropdownMenuItem(
                                                      value: "1", child: Text("1")),
                                                  DropdownMenuItem(
                                                      value: "2", child: Text("2")),
                                                  DropdownMenuItem(
                                                      value: "3", child: Text("3")),
                                                ],
                                                onChanged: (droupvalue) {
                                                  setState(() {
                                                    value=droupvalue;
                                                  });
                                                }),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text("1,299.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                    SizedBox(height: 8,),
                                    Text("4,999.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xffA8A5A5),decoration: TextDecoration.lineThrough)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(thickness: 2,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(onPressed: (){}, child: Text("Remove")),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 7,color: Color(0xffEDECEC),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    hi,
                    Text("Order Details",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    hi,
                    payment(data1: 'Bag Total', data2: '1,299.00',),
                    hi,
                    payment(data1: 'Bag Savings', data2: '3,700.00',),
                    hi,
                    payment(data1: 'Delivery Fee', data2: '99.00',),
                    hi,
                    payment(data1: 'Amount Payable ',data2: "1,398.00",font: FontWeight.bold,num: 16,)
                  ],
                ),
              ),
              hi,
              Divider(thickness: 7,color: Color(0xffEDECEC),),
              hi,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Return/Refund Policy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    hi,
                    Text("In case of return, we ensure quick refunds. Full amount will be refunded excluding conveniece fee",style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("1,398.00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                        Text("View details",style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    MaterialButton(
                      height: 44,
                      minWidth: 56,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: Colors.black,
                      onPressed: (){},child: Row(
                      children: [
                        Text("Proceed to Payment",style: TextStyle(fontSize: 16,color: Colors.white),)
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
  const payment({super.key,required this.data1,required this.data2, this.color, this.font, this.num});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(data1!,style: TextStyle(fontSize: num,fontWeight: font),),
        Text(data2!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:color),),
      ],
    );
  }
}

