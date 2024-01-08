import 'package:flutter/material.dart';

import '../../Listviewbuilders/gridViewbuilder.dart';

Widget space = SizedBox(height: 10,);

BoxBorder border = Border.all(strokeAlign: 1, width: 0.5);

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.card_travel_sharp,color: Colors.black,))
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Wishlist",style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 10,),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.8),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8,bottom: 0,left: 8.0,top: 8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      border: border,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite,color: Colors.red),
                              ),
                              alignment: Alignment.topRight),
                          decoration: BoxDecoration(
                              border: border,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(bag[index])),
                              borderRadius: BorderRadius.circular(10)),
                          height: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Nike", style: TextStyle(fontSize: 20)),
                                Text(
                                  "man logo printed backpack",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Text("4.8 | 5",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2,200",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "5,000",
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration:
                                          TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: border,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5))),
                                  child: Padding(padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Green"),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: border,
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Icon(Icons.delete),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: border,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.shopping_cart_sharp),
                                              Text("Add to Bag")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      )
    );
  }
}
