import 'package:flutter/material.dart';

import '../../api/get/getneocart.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {

    SliverGridDelegate sliverGridDelegate =
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1 / 1.3
        );

    return FutureBuilder(
      future: categoryget(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return SizedBox(
          height: 200,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: Categorystore.length,
            shrinkWrap: true,
            gridDelegate: sliverGridDelegate,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Card(
                        elevation: 0,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 0.2)),
                        child: Image(
                          fit: BoxFit.fill,
                          image:  NetworkImage(Categorystore[index].categoryImage.toString()),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                        child: Text(Categorystore[index].categoryName.toString(),style: TextStyle(fontSize: 12),))
                  ],
                )
              );
            },
          ),
        );
      },
    );
  }
}
