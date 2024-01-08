import 'package:flutter/material.dart';
import 'package:neocart/examplefile/list.dart';

Widget space = SizedBox(
  height: 5,
);

class gridViewbuildercategory extends StatelessWidget {
  const gridViewbuildercategory({super.key});

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;

    return GridView.builder(
      shrinkWrap: true,
      itemCount: product.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 1/1.5),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.cyan,
        );
        // return Padding(
        //     padding: const EdgeInsets.all(5),
        //     child: Container(
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Container(
        //             height: 90,
        //             width: 90,
        //             decoration: BoxDecoration(
        //                 border: Border.all(
        //                     width: 0.2, color: Colors.grey.shade400),
        //                 image: DecorationImage(
        //                     fit: BoxFit.fitHeight,
        //                     image: AssetImage(product[index])),
        //                 borderRadius: BorderRadius.circular(10)),
        //           ),
        //           space,
        //           Text("product" + index.toString())
        //         ],
        //       ),
        //     ));
      },
    );
  }
}

class gridViewbuilderproduct extends StatelessWidget {
  const gridViewbuilderproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: bag.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade100)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.favorite,
                                    size: 23, color: Colors.red)),
                          )),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(bag[index])),
                          borderRadius: BorderRadius.circular(10)),
                      height: 150,
                    ),
                    Text(
                      "Nike",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Men Logo Print Backpack",
                      style: TextStyle(fontSize: 10),
                    ),
                    space,
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "4.9  |  6",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    space,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\u{20B9}${1200}'),
                        Text(
                          '\u{20B9}${6000}',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}


List bag = [
  "Assets/exeimages/bagimage/adidas-01.webp",
  "Assets/exeimages/bagimage/nike-01.webp",
  "Assets/exeimages/bagimage/puma-01.webp",
  "Assets/exeimages/bagimage/WILDCARFT-01.webp",
  "Assets/exeimages/bagimage/woodland-01.webp",
  "Assets/exeimages/bagimage/nike-01.webp",
];
