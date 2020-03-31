import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/signup.dart';
import 'package:stepping_stone/pages/login.dart';
import 'package:stepping_stone/pages/signupinvest.dart';
import 'package:stepping_stone/pages/logininvest.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}


class _StartPageState extends State<StartPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome!"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text("Welcome To", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
                    Text("Stepping Stone!", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
                  ]
                ),
              ),
            ),
            AppCard(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text("Already have an account?", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginInvestPage()),);},
                        child: Text("Investor Login", style: TextStyle(color: w),),
                      )
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);},
                        child: Text("Entrepreneur Login", style: TextStyle(color: w),),
                      )
                    ),
                    Text("Make a new account?", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignupInvestPage()),);},
                        child: Text("Investor Sign Up", style: TextStyle(color: w),),
                      )
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),);},
                        child: Text("Entrepreneur Sign Up", style: TextStyle(color: w),),
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