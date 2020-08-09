import 'package:flutter/material.dart';

class Amer extends StatefulWidget {
  @override
  _AmerState createState() => _AmerState();
}

class _AmerState extends State<Amer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_location,
            ),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 10,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {},
        ),
        titleSpacing: 30,
        brightness: Brightness.dark,
      ),

      );
  }
}
