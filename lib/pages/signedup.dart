import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/home.dart';

class SignedinPage extends StatefulWidget {
  SignedinPage({Key key}) : super(key: key);

  @override
  _SignedinPageState createState() => _SignedinPageState();
}


class _SignedinPageState extends State<SignedinPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("Welcome $newuser!", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
            ),
          AppCard(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("Good Job, you signed up!", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                  Text("Please proceed to account page.", style: TextStyle(fontSize: 14.0, color: selection), textAlign: TextAlign.center,),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: RaisedButton(
                      color: selection,
                      onPressed: () {user = newuser; Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);},
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