import 'package:flutter/material.dart';
import 'package:neocart/screens/homepage/prductpage.dart';
import '../../api/get/apiallproductes.dart';

class products extends StatelessWidget {
  const products({super.key});

  @override
  Widget build(BuildContext context) {

    Widget space2 = SizedBox(
      height: 10,
    );

    return FutureBuilder(
      future: allproductes(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return snapshot.data==null? Center(child: CircularProgressIndicator()) : GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Allproducteslist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.6),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.5),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>productpage(num: index,)));
                },
                child: Container(
                  width: 159,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E2E2),width: 1)
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: Container(
                          child: Image(image: NetworkImage(Allproducteslist[index].productImage.toString())),
                          height: 120,
                          width: 144,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffE5E2E2),width: 1)
                          ),
                        ),
                      ),
                      Align(
                        alignment:Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(Allproducteslist[index].productName.toString(),style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,),
                              space2,
                              Row(
                                children: [
                                  Text('\u{20B9} ' + Allproducteslist[index].sellingPrice.toString(), style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,)),
                                  SizedBox(width: 9,),
                                  Text( '\u{20B9} ' + Allproducteslist[index].mrpp.toString(),style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 11,fontWeight: FontWeight.bold,color: Color(
                                      0xffadadad)),)
                                ],
                              ),
                              space2,
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(width: 1,color: Color(0xffE5E2E2))
                                  ),
                                  width: 144,
                                  height: 22,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8,left: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Green",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  )
                              ),
                              space2,
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(width: 1,color: Color(
                                          0xff69ea19))
                                  ),
                                  width: 144,
                                  height: 22,
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 8,left: 8),
                                      child: Center(
                                        child: Text("ADD",style: TextStyle(fontSize: 11,color: Color(0xff69ea19))),
                                      )
                                  )
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
