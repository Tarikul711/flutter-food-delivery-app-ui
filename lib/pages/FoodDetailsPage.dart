import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/FoodDetailsSlider.dart';

class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3a3737),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: <Widget>[
            /*FoodDetailsSlider(
                slideImage1: "assets/images/bestfood/ic_best_food_8.jpeg",
                slideImage2: "assets/images/bestfood/ic_best_food_9.jpeg",
                slideImage3: "assets/images/bestfood/ic_best_food_10.jpeg")*/

            FoodTitleWidget(
                productName: "Grilled Salmon",
                productPrice: "\$96.00",
                productHost: "pizza hut"),
            SizedBox(height: 10,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    color: Colors.black,
                    iconSize: 40,
                  ),

                  InkWell(
                    onTap: () => print('hello'),
                    child: new Container(
                      width: 200.0,
                      height: 55.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFFfd2c2c),
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(child: new Text('Add To Bag', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Color(0xFFfd2c2c),
                    iconSize: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key key,
    @required this.productName,
    @required this.productPrice,
    @required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              productHost,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1f1f1f),
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
