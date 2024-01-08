import 'package:flutter/material.dart';
import 'package:neocart/Listviewbuilders/gridViewbuilder.dart';
import 'package:neocart/examplefile/list.dart';

import 'addresspage.dart';
import 'orderpage.dart';

// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(useMaterial3: false),
//     debugShowCheckedModeBanner: false,
//     home: myaccount(),
//   ));
// }

List listviewpage = [
  oderpage(),
  null,
  addresspage(),
  null,
  null,
  null,
  null,
  null,
];



class myaccount extends StatelessWidget {
  const myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    pavenav(pg){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>pg));
    }
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          space,
          SizedBox(
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Text("My Account",style: TextStyle(fontSize: 22),)
              ],
            ),
          ),
          space,
          Container(
              color: Colors.grey[300],
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          size: 80,
                          color: Colors.grey[500],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text("Roshan",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 140,
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            Text("roshan123@gmail.com"),
                            Text("12345678")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 430,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listtile.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: ListTile(
                        onTap: () {pavenav(listviewpage[index]);},
                        dense: true,
                        visualDensity: VisualDensity(vertical: -3),
                        title: Text(listtile[index],
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ),
          Center(
            child: OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110),
                  child:
                  Text("Logout", style: TextStyle(color: Colors.black)),
                )),
          )
        ],
      ),
    );
  }
}
