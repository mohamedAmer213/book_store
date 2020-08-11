import 'package:flutter/material.dart';
import 'package:phone_store/drawer_components/categories.dart';
import 'package:phone_store/pages/home_page.dart';
import 'package:phone_store/drawer_components/settings.dart';
import 'package:phone_store/drawer_components/sign_out.dart';
import 'package:phone_store/drawer_components/about_us.dart';

class BookStoreDrawer extends StatefulWidget {
  @override
  _BookStoreDrawerState createState() => _BookStoreDrawerState();
}

class _BookStoreDrawerState extends State<BookStoreDrawer> {
  final myStyle =
      TextStyle(color: Color(0xff2C343D), fontWeight: FontWeight.bold);

  final List<String> drawerTitles = [
    "الصفحة الرئيسية",
    "الاقسام",
    "حول التطبيق",
    "الاعدادات",
    "تسجيل الخروج",
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        _buildUserAccountsDrawerHeader(),
        _buildListTileDrawerItem(drawerTitles, 0, Icon(Icons.home,), () {
          Navigator.of(context).pushNamed('home_page');
        }),
        _buildListTileDrawerItem(drawerTitles, 1, Icon(Icons.category), () {
          Navigator.of(context).pushNamed('categories');
        }),
        Divider(
          height: 10,
          color: Colors.black54,
        ),
        _buildListTileDrawerItem(drawerTitles, 2, Icon(Icons.info), () {
          Navigator.of(context).pushNamed('aboutUs');

        }),
        _buildListTileDrawerItem(drawerTitles, 3, Icon(Icons.settings), () {
          Navigator.of(context).pushNamed('settings');

        }),
        _buildListTileDrawerItem(
            drawerTitles,
            4,
            Icon(
              Icons.exit_to_app,
            ), () {
          Navigator.of(context).pushNamed('signOut');
        }),
      ]),
    );
  }

  ListTile _buildListTileDrawerItem(List<String> strings, int stringIndex,
      Icon icon, Function onTapFunction) {
    return ListTile(
      onTap: (){},
      contentPadding: EdgeInsets.only(right: 16),
      trailing: IconButton(icon: icon, onPressed: onTapFunction),
      title: Text(
        strings[stringIndex],
        style: myStyle,
      ),
    );
  }

  UserAccountsDrawerHeader _buildUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage("images/photo.png"), fit: BoxFit.cover),
      ),
      accountEmail: Text("salmohamed2000@gmail.com"),
      accountName: Text("Mohamed Amer"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: ExactAssetImage(
          'images/amer.png',
        ),
      ),
    );
  }
}
