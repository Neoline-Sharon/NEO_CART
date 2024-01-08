import 'package:flutter/material.dart';
import 'package:neocart/Listviewbuilders/gridViewbuilder.dart';
import '../../controller/controller.dart';

// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(useMaterial3: false),
//     debugShowCheckedModeBanner: false,
//     home: productepage(),
//   ));
// }

class productepage extends StatelessWidget {
  const productepage({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.width;
    EdgeInsetsGeometry padding =
        const EdgeInsets.only(right: 55, left: 55, top: 15, bottom: 15);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("Assets/logo/NEO E COMMERCE-01.png"),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.card_travel_sharp,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Appuicontroll.textfieldheight,
                        horizontal: Appuicontroll.textfieldwidth),
                    hintText: "Search Product",
                    border: OutlineInputBorder()),
              ),
              space,
              Container(
                height: hi / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/exeimages/bagimage/nike-01.webp"))),
              ),
              Container(
                height: hi / 6,
                width: wi / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/exeimages/bagimage/nike-01.webp"))),
              ),
              Text("Wilcraft"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("1,999.00", style: TextStyle(color: Colors.green)),
                      SizedBox(width: 10),
                      Text(
                        "6,999",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.whatshot)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.face)),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("black", style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Blue", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: padding,
                      child: Text("Add", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      padding: padding,
                      onPressed: () {},
                      child: Text("Buy Now",
                          style: TextStyle(color: Colors.white)),
                      color: Colors.green),],
              ),
              Text("Nike bags typically include multiple compartments and pockets for organized storage of belongings.\n They often incorporate innovative design elements, such as ventilated shoe compartments, laptop sleeves, and adjustable straps for comfort and convenience.\n The bags may also showcase the iconic Nike logo and come in various styles, colors, and sizes to cater to different preferences and needs. \n For the most accurate and up-to-date information on specific Nike bag products, I recommend visiting the official Nike website or contacting authorized Nike retailers",
                style: TextStyle(fontSize: 20,color: Colors.grey),textAlign: TextAlign.start,)

            ],
          ),
        ),
      ),
    );
  }
}
