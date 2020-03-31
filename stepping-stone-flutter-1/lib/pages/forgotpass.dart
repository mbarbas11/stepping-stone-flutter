import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';



class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          AppCard(
            child: Center(
              child: Text("Stepping Stone", style: TextStyle(fontSize: 32.0, color: selection,), textAlign: TextAlign.center,),
            ),
          ),
          AppCard(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Username"),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0),
                    child: FlatButton(
                      color: selection,
                      textColor: w,
                      onPressed: () {},
                      child: Text("Send me a new password"),
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