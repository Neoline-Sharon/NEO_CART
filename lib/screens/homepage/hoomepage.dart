import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neocart/controller/controller.dart';
import 'package:neocart/screens/homepage/Drawer.dart';
import '../../api/get/apiallproductes.dart';
import '../../api/get/modellclass/Allproductesmodel.dart';
import 'carousel_Slider.dart';
import 'category/Category.dart';
import 'Products.dart';
import 'filterpage.dart';

colors _colors = colors();

void main(){
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: false),
    home: hoomepage(),
  ));
}

List bag = [
  "Assets/exeimages/bagimage/adidas-01.webp",
  "Assets/exeimages/bagimage/nike-01.webp",
  "Assets/exeimages/bagimage/puma-01.webp",
  "Assets/exeimages/bagimage/WILDCARFT-01.webp",
  "Assets/exeimages/bagimage/woodland-01.webp",
];

List<Allproductesmodel> Allproducteslistfitter = [];

final _myBox = Hive.box('sign_in');
String customerid = _myBox.get(3).toString();

class hoomepage extends StatefulWidget {
  @override
  _hoomepageState createState() => _hoomepageState();
}

class _hoomepageState extends State<hoomepage> {
  final TextEditingController textController = TextEditingController();
  TextEditingController _controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  bool isTextFieldActivated = false;

  @override
  void initState() {
    super.initState();
    Allproducteslistfitter.addAll(Allproducteslist);
    focusNode.addListener(() {
      setState(() {
        isTextFieldActivated = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void _filter(String query) {
    setState(() {
      Allproducteslistfitter = Allproducteslist.where((Allproducteslist) => Allproducteslist.productName!.toLowerCase().contains(query.toLowerCase()) || Allproducteslist.productName!.toLowerCase().contains(query.toLowerCase())).toList();
      // Allproducteslistfitter = Allproducteslist.where((Allproducteslist) => Allproducteslist.sellingPrice!.toLowerCase().contains(query.toLowerCase()) || Allproducteslist.sellingPrice!.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  Widget space2 = SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(child: drawerr(),),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          title: Container(
            width: 150,
            child: Image.asset("Assets/logo/NEO E COMMERCE-01.png"),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextField(
                focusNode: focusNode,
                controller: _controller,
                onChanged: _filter,
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
          ],
        ),
      ),
      body: isTextFieldActivated
          ? Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Allproducteslistfitter.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.5),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.5),
                    child: Container(
                      width: 159,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Color(0xffE5E2E2), width: 1)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => filtterpage(
                                          num: index,
                                        )
                                    )
                                );
                              },
                              child: Container(
                                child: Image(
                                    image: NetworkImage(
                                        Allproducteslistfitter[index]
                                            .productImage
                                            .toString())),
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0xffE5E2E2), width: 1)),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    Allproducteslistfitter[index]
                                        .productName
                                        .toString(),
                                    style: TextStyle(fontSize: 15),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  space2,
                                  Row(
                                    children: [
                                      Text(
                                          '\u{20B9} ' +
                                              Allproducteslistfitter[index]
                                                  .sellingPrice
                                                  .toString(),
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        '\u{20B9} ' +
                                            Allproducteslistfitter[index]
                                                .mrpp
                                                .toString(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffadadad)),
                                      )
                                    ],
                                  ),
                                  space2,
                                  GestureDetector(
                                    onTap: () {
                                      // addtocart(customerid,Allproducteslist[index].stockId.toString(),Allproducteslist[index].mrpp.toString(),Allproducteslist[index].sellingPrice.toString(),context);
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
                                            )
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
          )
          : Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    space2,
                    carouselSlider(),
                    space2,
                    Text("Category",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    space2,
                    Category(),
                    space2,
                    Text("Products", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    space2,
                    products(),
                  ],
                ),
              ),
            ),
    );
  }
}
