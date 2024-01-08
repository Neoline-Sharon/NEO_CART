import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../api/get/getneocart.dart';

class carouselSlider extends StatelessWidget {
  const carouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: bannerget(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return snapshot.data==null? const Center(child: CircularProgressIndicator()) : CarouselSlider.builder(
          itemCount: bannerstore.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Image(fit: BoxFit.fitHeight,image: NetworkImage(bannerstore[index].bannerImage.toString()));
          },
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              height: 120
          ),
        );
      },
    );
  }
}
