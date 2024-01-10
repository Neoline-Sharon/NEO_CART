import 'package:flutter/material.dart';
import '../api/get/product details.dart';
import '../api/get/productdetailmodel.dart';

void main() {
  runApp(MaterialApp(
    home: cat(),
  ));
}

// class Cat extends StatefulWidget {
//   const Cat({Key? key}) : super(key: key);
//
//   @override
//   State<Cat> createState() => _CatState();
// }
//
// class _CatState extends State<Cat> {
//   late Future<Productdetailmodel?> productDetailsFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     productDetailsFuture = productDetails();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: FutureBuilder<Productdetailmodel?>(
//           future: productDetailsFuture,
//           builder: (BuildContext context, AsyncSnapshot<Productdetailmodel?> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else if (snapshot.data == null) {
//               return Text('Data is null');
//             } else {
//               return Text(snapshot.data!.details?.productName ?? 'null');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

class cat extends StatelessWidget {
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Productdetailmodel?>(
          future: productDetails(),
          builder: (BuildContext context, AsyncSnapshot<Productdetailmodel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.data == null) {
              return Text('Data is null');
            } else {
              return Text(snapshot.data!.details?.productName ?? 'null');
            }
          },
        ),
      ),
    );
  }
}

