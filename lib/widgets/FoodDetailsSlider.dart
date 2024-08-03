import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;

  FoodDetailsSlider(
      {Key? key,
      required this.slideImage1,
      required this.slideImage2,
      required this.slideImage3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          child: AnotherCarousel(
        images: [
          Image.asset(slideImage1),
          // Uncomment and include these if you have more images
          // Image.asset(slideImage2),
          // Image.asset(slideImage3),
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.purple,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black54.withOpacity(0),
        borderRadius: true,
        radius: const Radius.circular(20),
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
      )),
    );
  }
}
