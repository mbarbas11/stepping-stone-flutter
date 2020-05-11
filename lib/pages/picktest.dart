import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/start.dart';
import 'package:stepping_stone/common/app_card.dart';



class PickTestPage extends StatefulWidget {
  PickTestPage({Key key}) : super(key: key);

  @override
  _PickTestPageState createState() => _PickTestPageState();
}


class _PickTestPageState extends State<PickTestPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome"),
        actions: <Widget>[
          FlatButton(
            color: selection,
            onPressed: () {
              pass1 = null;
              newuser = null;
              newemail = null;
              pass2 = null;

              pass = null;
              user = null;
              email = null;
            
              Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()),);
              },
            child: Text("Log out", style: TextStyle(color: w),)
          )
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/generic.png',
                    width: 50,
                    height: 75),
                    Text("test?", style: TextStyle(fontSize: 25.0, color: selection),),
                  ],
                )
              )
            ),
            AppCard(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("This is a temporary home screen we are using while we finesh setting up thee rest of the application.", style: TextStyle(fontSize: 17.0)),
                  ]
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}