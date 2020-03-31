import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/signupinvest.dart';
import 'package:stepping_stone/pages/forgotpassinvest.dart';
import 'package:stepping_stone/pages/logedininvest.dart';


class LoginInvestPage extends StatefulWidget {
  LoginInvestPage({Key key}) : super(key: key);

  @override
  _LoginInvestPageState createState() => _LoginInvestPageState();
}


class _LoginInvestPageState extends State<LoginInvestPage>{


  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Back Investor"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          AppCard(
            child: Center(
              child: Text("Stepping Stone", style: TextStyle(fontSize: 32.0, color: selection), textAlign: TextAlign.center,),
            ),
          ),
          AppCard(
            child: Form(
              key: key,
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "Username"),
                      onChanged: (value) {
                        user = value;
                      },
                      validator: (value) {
                        if (value == ""){
                          return "Please enter a username";
                        }
                        return null;
                      }
                      
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                      onChanged: (value) => pass = value,
                      obscureText: !showPass,
                      validator: (value) {
                        if (value == ""){
                          return "Please enter a password";
                        }
                        return null;
                      }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[ 
                            Checkbox(
                                value: showPass,
                                onChanged: (value) {setState((){showPass = !showPass;});},
                              ),  
                            Text("Show Password", style: TextStyle(fontSize: 15.0,), textAlign: TextAlign.center,),
                          ]
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {
                          if (this.key.currentState.validate()){
                            this.key.currentState.save();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogedinPage()),);
                            }
                          },
                        child: Text("Login", style: TextStyle(color: w),),
                      )
                    ),
                    Container(
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {
                         
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassinvestPage()),);
                          },
                        child: Text("Forgot Password?", style: TextStyle(color: w),)
                      )
                    )
                  ],
                ),
              )
            )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?    "),
                RaisedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignupInvestPage()),);}, child: Text("Sign Up"))
              ]
            )
        ],
        ),
      )
    );
  }
}