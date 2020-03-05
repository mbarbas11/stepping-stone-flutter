import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/home.dart';

class LogedinPage extends StatefulWidget {
  LogedinPage({Key key}) : super(key: key);

  @override
  _LogedinPageState createState() => _LogedinPageState();
}


class _LogedinPageState extends State<LogedinPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("$user"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("Welcome $user!", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
            ),
          AppCard(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("Good Job, you loged in!", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: RaisedButton(
                      color: selection,
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);},
                      child: Text("Home", style: TextStyle(color: w),),
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