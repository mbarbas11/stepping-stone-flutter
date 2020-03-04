import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/start.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("$user Home", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
            ),
          AppCard(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("This is your home screen.", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                  Text("It will look different in the future.", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: RaisedButton(
                      color: selection,
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()),);},
                      child: Text("Log out", style: TextStyle(color: w),),
                    )
                  ),
                ],
              ),
            )
            ),
        ],
        ),
      )
    );
  }
}