import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:phone_store/models/post.dart';
/*
class Api {
  //List<Post> postList=[];
   Future<List<Post>> fetchingData() async {
     var response = await http.get(
         'https://jsonplaceholder.typicode.com/posts');
     var jsonData = json.decode(response.body);
     for (var item in jsonData) {
       print(item['body']);
       //   postList.add(item);
     }
   }
 }

 */

class Api {
  //String name="Mohamed";
  fetchingData() async {
    var response =
        await http.get('https://jsonplaceholder.typicode.com/comments');
    var jsonData = json.decode(response.body);
    var data = jsonData;
    for (var item in data) {
      // print(item['name']);
    }
    return data;
  }

  Future<List<Post>> fetchingPost() async {
    List<Post> postsList = [];
    var response =
        await http.get('https://jsonplaceholder.typicode.com/comments');
    var jsonData = json.decode(response.body);
    var data = jsonData;
    for (var item in data) {
      //hint the data variable is an array and we have to extract each row to its Model
      Post post = Post(
        userId: item['userId'],
        id: item['id'],
        title: item['title'],
        body: item['body'],
      );
      postsList.add(post);
    }
    for (var item in postsList) {
      print(item.id);
    }
    return postsList;
  }
}
