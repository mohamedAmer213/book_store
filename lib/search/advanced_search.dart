import 'package:flutter/material.dart';
import 'package:phone_store/api_folder/app_api.dart';
import 'package:phone_store/models/post.dart';

class AdvancedSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.close,
          color: Colors.orange,
        ),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(children: <Widget>[
      Container(child: Text('some Results for this app ua_amer'),)
    ],);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: Text('some Suggestion for this application ua_amer '),
    );
  }
}

/*
*class AdvancedSearch2 extends SearchDelegate<String> {
  Api api = Api();
  List response;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Icon(Icons.search),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
       // Navigator.pop(context);
      close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(children: <Widget>[
      FutureBuilder(
        future: api.fetchingComments(),
        builder: (context, AsyncSnapshot snapShot) {
          switch (snapShot.connectionState) {
            case ConnectionState.active:
              return  _loadingMethod(context);
            case ConnectionState.waiting:
              return _loadingMethod(context);
            case ConnectionState.none:
              return _failed();
            case ConnectionState.done:
              if (snapShot.hasError) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Text(snapShot.data[0]['name']),
                );
              }else{
                return _noData(context);
              }
          }
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child: Text('Stop Here'),
          );
        },
      )
    ]);
      }

  Widget _noData(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Text(
          'No Internet Connection'
      ),
    );
  }
  Widget _loadingMethod(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: CircularProgressIndicator(backgroundColor: Colors.orange,),
    );

  }
  Widget _failed(){
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(backgroundColor: Colors.blue,),
          ],
        ),
      ),
    );
  }


}
* */

/*
 switch (snapShot.connectionState) {
            case ConnectionState.active:
              return  _loadingMethod(context);
            case ConnectionState.waiting:
              return _loadingMethod(context);
            case ConnectionState.none:
              return _failed();
            case ConnectionState.done:
              if (snapShot.hasData) {
               Post post1=snapShot.data[0];
               Post post2=snapShot.data[1];
               Post post3=snapShot.data[2];
               Post post4=snapShot.data[3];
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Text(post2.userId.toString()),
                );
              }else{
                return _noData(context);
              }
          }
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child: Text('Stop Here'),
          );

           */
