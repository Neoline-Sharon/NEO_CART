import 'package:flutter/material.dart';

class addresspage extends StatelessWidget {
  const addresspage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget space = SizedBox(height: 16,);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          TextButton(onPressed: (){}, child: Text("+ Add Address ",style: TextStyle(color: Color(0xff0287E7),fontSize: 12),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 34),
              child: Text("Addresses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text("Default Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 21,
                      width: 67,
                      child: Center(child: Text("DEFAULT",style: TextStyle(fontSize: 13,color: Colors.white))),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xff09BB1B)
                      ),
                    ),
                    space,
                    Text("Roshan",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                    space,
                    Text("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",style: TextStyle(fontSize: 12)),
                    space,
                    Text("Phone : 8590106466  ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    space,
                    Divider(thickness: 1.5,),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("Delete ",style: TextStyle(fontSize: 12,color: Color(0xffFF0000)),)),
                        SizedBox(width: 5,),
                        TextButton(onPressed: (){}, child: Text("Edit ",style: TextStyle(fontSize: 12,color: Color(0xff0287E7)),))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
