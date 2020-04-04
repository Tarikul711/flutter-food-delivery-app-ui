import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  String slideImage1;
  String slideImage2;
  String slideImage3;

  FoodDetailsSlider(
      {Key key,
      @required this.slideImage1,
      @required this.slideImage2,
      @required this.slideImage3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          child: Carousel(
            images: [
              Image.asset(
                slideImage1,
              ),
              /* Image.asset(
                slideImage2,
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                slideImage3,
                height: double.infinity,
                width: double.infinity,
              ),*/
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )),
    );
  }
}
