import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/signup.dart';
import 'package:stepping_stone/pages/login.dart';

class LoadPage extends StatefulWidget {
  LoadPage({Key key}) : super(key: key);

  @override
  _LoadPageState createState() => _LoadPageState();
}


class _LoadPageState extends State<LoadPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome!", textAlign: TextAlign.center,),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          AppCard(
            child: Center(
              child: Text("Stepping Stone", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
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
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: RaisedButton(
                      color: selection,
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);},
                      child: Text("Login", style: TextStyle(color: w),),
                    )
                  ),
                  Text("Make a new account?", style: TextStyle(fontSize: 18.0, color: selection), textAlign: TextAlign.center,),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20.0),
                    child: RaisedButton(
                      color: selection,
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()),);},
                      child: Text("Sign Up", style: TextStyle(color: w),),
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