import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../app_drawer/book_store_drawer.dart';
import 'package:phone_store/pages/home_page.dart';

class UserAccountDrawer extends StatefulWidget {
  @override
  _UserAccountDrawerState createState() => _UserAccountDrawerState();
}

class _UserAccountDrawerState extends State<UserAccountDrawer> {

  final myStyle =
  TextStyle(color: Color(0xff2C343D), fontWeight: FontWeight.bold);

  //final myStyle = TextStyle(color: Color(0xff4E7F09));

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: BookStoreDrawer(),
          appBar: AppBar(
            title: Text("Home",),
            centerTitle: true,
            backgroundColor: Colors.red.shade900,
          ),
          body: HomePage(),
        )
    );
  }
}
