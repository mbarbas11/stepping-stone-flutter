import 'package:flutter/material.dart';
import 'package:stepping_stone/pages/investview.dart';
import 'package:stepping_stone/pages/homei.dart';
import 'package:stepping_stone/common/globals.dart';

class FollowingPage extends StatefulWidget {
  FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}


class _FollowingPageState extends State<FollowingPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            color: selection,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>InvestorPage()),);
              },
            child: Text("Home", style: TextStyle(color: w),)
          )
        ],
        automaticallyImplyLeading: false,
        title: Text("Entrepreneurs"),
      ),
      body: ListView.builder(
        itemCount: follow.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${follow[index]}'),
          );
        },
      )
    );
  }
}