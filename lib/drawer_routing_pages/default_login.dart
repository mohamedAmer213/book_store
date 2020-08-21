import 'package:flutter/material.dart';

class DefaultLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DefaultLoginState();
  }
}

class _DefaultLoginState extends State<DefaultLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff73AEF5),
                    Color(0xff61A4F1),
                    Color(0xff478DE0),
                    Color(0xff398AE5),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ]),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'sign In',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildTextFieldName('Email'),
                      SizedBox(
                        height: 8.0,
                      ),
                      _buildEmailTextField(),
                      SizedBox(
                        height: 8.0,
                      ),
                      _buildTextFieldName('Password'),
                      SizedBox(
                        height: 8.0,
                      ),
                      buildPasswordTextField(),
                      Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10) ),
                        padding: EdgeInsets.symmetric(
                          vertical: 120,
                        ),
                        child: RaisedButton(
                          child: Text('LOGIN'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField buildPasswordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
          hintText: 'Enter your password',
          filled: true,
          fillColor: Color(0xff398AE5),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
          )),
    );
  }

  Container _buildEmailTextField() {
    return Container(
      //  color: Colors.blue,
      alignment: Alignment.centerLeft,
      height: 60,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
          hintText: ('Enter you Email'),
          //labelText: ('Enter your Email'),
          filled: true,
          fillColor: Color(0xff478DE0),
        ),
      ),
//                        decoration: BoxDecoration(),
    );
  }

  Container _buildTextFieldName(String name) {
    return Container(
        child: Text(
      name,
      style: TextStyle(
          fontFamily: 'OpenSans',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold),
    ));
  }
}
