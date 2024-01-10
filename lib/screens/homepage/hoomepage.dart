import 'package:flutter/material.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/screens/homepage/Drawer.dart';
import 'package:neocart/screens/homepage/prductpage.dart';
import '../../api/get/getneocart.dart';
import 'Category.dart';
import 'carousel_Slider.dart';

colors _colors = colors();

List bag = [
  "Assets/exeimages/bagimage/adidas-01.webp",
  "Assets/exeimages/bagimage/nike-01.webp",
  "Assets/exeimages/bagimage/puma-01.webp",
  "Assets/exeimages/bagimage/WILDCARFT-01.webp",
  "Assets/exeimages/bagimage/woodland-01.webp",
];

class hoomepage extends StatefulWidget {
  const hoomepage({super.key});

  @override
  State<hoomepage> createState() => _hoomepageState();
}

class _hoomepageState extends State<hoomepage> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // Add a listener to the FocusNode to detect focus changes
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        print('TextField is activated');
      } else {
        print('TextField is deactivated');
      }
    });
  }

  Widget build(BuildContext context) {
    Widget space = SizedBox(
      height: 10,
    );

    BoxBorder border = Border.all(strokeAlign: 1, width: 0.5);

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(child: drawerr()),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: TextField(
                focusNode: _focusNode,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Appuicontroll.textfieldheight,
                        horizontal: Appuicontroll.textfieldwidth),
                    hintText: "Search",
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Location",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(
                    "Vyttila,Ekm",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space,
              carouselSlider(),
              space,
              Text("Category",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              space,
              Category(),
              Text("Products",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              space,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: bag.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.8),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 8, bottom: 0, left: 8.0, top: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => productpage()));
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            border: border,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Align(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.favorite,
                                          color: Colors.red),
                                    ),
                                    alignment: Alignment.topRight),
                                decoration: BoxDecoration(
                                    border: border,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        // image: AssetImage(bag[index])
                                      image: NetworkImage("Assets/exeimages/bagimage/WILDCARFT-01.webp")
                                    ),
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
                                  height: 120,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Nike",
                                          style: TextStyle(fontSize: 20)),
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
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Green"),
                                              Icon(Icons.arrow_drop_down)
                                            ],
                                          ),
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
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
