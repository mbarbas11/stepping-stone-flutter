import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/start.dart';




class GenericHomePage extends StatefulWidget {
  GenericHomePage({Key key}) : super(key: key);

  @override
  _GenericHomePageState createState() => _GenericHomePageState();
}


class _GenericHomePageState extends State<GenericHomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $user!"),
      ),
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
                  Text("This is an unfineshed Home screen for $user, we can set up your bio later."),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: RaisedButton(
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