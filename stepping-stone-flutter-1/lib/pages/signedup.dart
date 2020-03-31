import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/generichome.dart';

class SignedupPage extends StatefulWidget {
  SignedupPage({Key key}) : super(key: key);

  @override
  _SignedupPageState createState() => _SignedupPageState();
}


class _SignedupPageState extends State<SignedupPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("$newuser"),
      ),
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
                      onPressed: () {user = newuser; Navigator.push(context, MaterialPageRoute(builder: (context) => GenericHomePage()),);},
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