import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_pro/carousel_pro.dart';
class UserAccountDrawer extends StatefulWidget {
  @override
  _UserAccountDrawerState createState() => _UserAccountDrawerState();
}

class _UserAccountDrawerState extends State<UserAccountDrawer> {
  final List<String> drawerTitles = [
    "الصفحة الرئيسية",
    "الاقسام",
    "حول التطبيق",
    "الاعدادات",
    "تسجيل الخروج",


  ];
  final myStyle =
      TextStyle(color: Color(0xff2C343D), fontWeight: FontWeight.bold);

  //final myStyle = TextStyle(color: Color(0xff4E7F09));

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
              children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/photo.png"),
                    fit: BoxFit.cover),
              ),
              accountEmail: Text("salmohamed2000@gmail.com"),
              accountName: Text("Mohamed Amer"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage(
                  'images/amer.png',
                ),
              ),
            ),
            _buildListTileItem(drawerTitles, 0,Icon(Icons.home),),
            _buildListTileItem(drawerTitles, 1,Icon(Icons.category)),
            Divider(height: 10,color: Colors.black54,),
            _buildListTileItem(drawerTitles, 2,Icon(Icons.info),),
            _buildListTileItem(drawerTitles, 3,Icon(Icons.settings),),
            _buildListTileItem(drawerTitles, 4,Icon(Icons.exit_to_app,)),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
        ),
        body: _usingCarousel(),
      ),
    );
  }

  CarouselSlider _usingCarouselSlider() {
    return CarouselSlider(
        items: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/long_way.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/amer.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/bg.png'),
              fit: BoxFit.cover,
            )),
          ),
        ],
        options: CarouselOptions(
          height: 200,
          aspectRatio: 18 / 9,
          viewportFraction: 0.8,
          initialPage: 1,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 10),
          autoPlayAnimationDuration: Duration(milliseconds: 600),
          autoPlayCurve: Curves.easeInCubic,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          pauseAutoPlayOnManualNavigate: true,
        ),
      );
  }

  ListTile _buildListTileItem(List<String> strings, int stringIndex,Icon icon) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.only(right: 16),
      trailing: IconButton(
          icon: icon,
          onPressed: () {}),
      title: Text(
        strings[stringIndex],
        style: myStyle,
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
          ExactAssetImage('images/photo.png'),
          ExactAssetImage('images/long_way.png'),
        ],
        animationCurve: Curves.decelerate,
        dotIncreasedColor: Colors.deepOrange,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        boxFit: BoxFit.cover,
        borderRadius: false,
        radius: Radius.circular(20),
        dotPosition: DotPosition.bottomCenter,
        overlayShadow: true,
        autoplay: true,
        autoplayDuration: Duration(seconds:10),
        animationDuration: Duration(seconds: 2),
        defaultImage: Image,

      ),
    );
  }

  Widget _buildCarouselContainer() {
    return Container(
        child: CarouselSlider(
      items: <Widget>[
        Container(child: Text("Amer")),
        Container(child: Text("Amer")),
        Container(child: Text("Amer")),
      ],
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 200),
        reverse: true,
        initialPage: 0,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.bounceOut,
        enlargeCenterPage: true,
        pauseAutoPlayOnManualNavigate: true,
      ),
    ));
  }
}
