import 'package:flutter/material.dart';
//import 'appbar.dart';
import 'user_account_drawer.dart';
import 'drawer.dart';
void main() {
  runApp(PhoneStore());
}

class PhoneStore extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserAccountDrawer(),
    );
  }
}
