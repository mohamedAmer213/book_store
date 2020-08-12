import 'package:flutter/material.dart';
import'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  //String name="Mohamed";
    fetchingData() async {
     var response = await http.get(
         'https://jsonplaceholder.typicode.com/comments');
     var jsonData = json.decode(response.body);
     var data = jsonData;
     for (var item in data) {
       print(item['body']);
     }
   return data;
    }

}