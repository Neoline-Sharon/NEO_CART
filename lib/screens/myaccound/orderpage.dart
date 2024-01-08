import 'package:flutter/material.dart';
import '../../examplefile/exe4.dart';

class oderpage extends StatelessWidget {
  const oderpage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Spaceing = SizedBox(
      height: 29,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 23),
            child: Text(
              "Order #FN8486308917",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Color(0xffECE8E8),
            width: 437,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 32),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Amount",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1,398.00",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "07 Jan 2024",
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
                            "Paid by Credit Card",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Address",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0287E7)),
                          ),
                          Text(
                            "View Details",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0287E7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Out for Delivery",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 51,
                ),
                ScreenProgress(
                  ticks: 5,
                  num: 4,
                  color: Color(0xff07ED7F),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      "Confirmed\n07 Jan",
                      style: TextStyle(color: Color(0xff07ED7F), fontSize: 8),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Packed\n08 Jan",
                      style: TextStyle(color: Color(0xff07ED7F), fontSize: 8),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Shipped\n08 Jan",
                      style: TextStyle(color: Color(0xff07ED7F), fontSize: 8),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Out For Delivery\n17 Jan",
                      style: TextStyle(color: Color(0xff07ED7F), fontSize: 8),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Delivery Partner ",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Xpressbees",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Text(
                              "Tracking ID",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "FN8486308917",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.copy,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 27,
                          width: 82,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text("Track Order",
                                  style: TextStyle(fontSize: 10))),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                            onTap: (){},
                            child: Text("Cancel",style: TextStyle(fontSize: 10,color: Color(0xff0287E7)),)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffECE8E8)),
                        image: DecorationImage(
                          fit: BoxFit.cover,image: AssetImage("Assets/exeimages/bagimage/WILDCARFT-01.webp")),
                        color: Colors.cyanAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("3,299.00",style: TextStyle(fontSize: 11,),),
                        SizedBox(height: 13,),
                        Text("Adidas",style: TextStyle(fontSize: 11,color: Color(0xff555454)),),
                        Text("Archive Logo Print",style: TextStyle(fontSize: 10,),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
