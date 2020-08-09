import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Amer extends StatefulWidget {
  @override
  _AmerState createState() => _AmerState();
}

class _AmerState extends State<Amer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[Text("Mohamed Amer"), Text("Amer")]),
      ),
      body: Container(
        child: _usingCarousel(),
      ),
    );
  }

  SizedBox _usingCarousel() {
    return SizedBox(
        height: 300,
        width: double.infinity,
        child: Carousel(
          images: [
            AssetImage('images/amer.png'),
            ExactAssetImage('images/bg.png'),
            ExactAssetImage('images/long_way.png'),
          ],
          animationCurve: Curves.decelerate,
          dotIncreasedColor: Colors.red.shade900,
          dotBgColor: Colors.transparent,
          showIndicator: true,
          boxFit: BoxFit.cover,
          borderRadius: false,
          dotPosition: DotPosition.bottomCenter,
          overlayShadow: true,
          autoplay: true,
           autoplayDuration: Duration(seconds:10),
          animationDuration: Duration(seconds: 2),
          defaultImage: Image,

        ),
      );
  }
/*
* SizedBox(
  height: 150.0,
  width: 300.0,
  child: Carousel(
    images: [
      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
      ExactAssetImage("assets/images/LaunchImage.jpg")
    ],
  )
),

*
* */

}
