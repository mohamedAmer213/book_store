import 'package:flutter/material.dart';
import 'package:phone_store/pages/home_page.dart';
import 'package:phone_store/phones_details/iphone.dart';
import 'package:phone_store/phones_details/nokia.dart';
//import 'appbar.dart';
import 'pages/first_home.dart';
import './drawer_components/categories.dart';
import './drawer_components/about_us.dart';
import './drawer_components/settings.dart';
import './drawer_components/sign_out.dart';
import './utilities.dart';
import './phones_details/samsung.dart';
void main() {
  runApp(PhoneStore());
}

class PhoneStore extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home_page':(context){return UserAccountDrawer();} ,
        'home':(context){return HomePage();} ,
        'categories':(context){return Categories();} ,
        'aboutUs':(context){return AboutUs();}   ,
        'settings':(context){return Settings();} ,
        'signOut':(context){return SignOut();  } ,
        'samsung':(context){return Samsung();} ,
        'iphone':(context){return Iphone();} ,
        'nokia':(context){return Nokia();},
      } ,
      theme:ThemeData(primarySwatch: Colors.red),
      home: UserAccountDrawer(),
    );
  }
}
