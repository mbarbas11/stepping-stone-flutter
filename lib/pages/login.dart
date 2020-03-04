import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/signup.dart';
import 'package:stepping_stone/pages/forgotpass.dart';
import 'package:stepping_stone/pages/logedin.dart';





class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage>{

  void _showPass(){
    setState((){
      bool newValue = !showPass;
      showPass = newValue;

    });
  }


  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
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
            child: Form(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "Email"),
                      onSaved: (value) => email = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                      onSaved: (value) => pass = value,
                      obscureText: showPass,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[ 
                            Container(
                              width: 150,
                              alignment: AlignmentDirectional.centerStart,
                              margin: EdgeInsets.only(top: 20.0),
                              child: FlatButton(
                                color: selection,
                                onPressed: _showPass,
                                child: Text("Show/Hide Password", style: TextStyle(fontSize: 10.0, color: w), textAlign: TextAlign.center,),
                              )
                            ),
                          ]
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {
                          //this.key.currentState.save();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LogedinPage()),);
                          },
                        child: Text("Login", style: TextStyle(color: w),),
                      )
                    ),
                    Container(
                      child: RaisedButton(
                        color: selection,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassPage()),);},
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
                RaisedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),);}, child: Text("Sign Up"))
              ]
            )
        ],
        ),
      )
    );
  }
}