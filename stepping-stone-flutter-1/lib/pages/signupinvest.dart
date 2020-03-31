import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/signedup.dart';
import 'package:email_validator/email_validator.dart';



class SignupInvestPage extends StatefulWidget {
  SignupInvestPage({Key key}) : super(key: key);

  @override
  _SignupInvestPage createState() => _SignupInvestPage();
}

class _SignupInvestPage extends State<SignupInvestPage>{

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Investor"),
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
            child: Form(
              key: key,
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: "Enter Email"),
                      validator: (value) {
                        if (EmailValidator.validate(value)) {return null;}
                        return "Valid Email required.";
                      },  
                      onSaved: (value) => newemail = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Enter Username"),
                      onSaved: (value) => newuser = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Enter Password"),
                      onChanged: (value) => pass1 = value,
                      validator: (value) {
                        int len = value.length;

                        if (len < 8) {return "Password must be at least 8 characters";}

                        return null;
                      },
                      obscureText: true,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Reenter Password"),
                      onChanged: (value) => pass2 = value,
                      validator: (value) => pass1 != pass2 ? "Passwords don't match" : null,
                      obscureText: true,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child: FlatButton(
                        color:selection,
                        textColor: w,
                        onPressed: () {
                          if (this.key.currentState.validate()){
                            this.key.currentState.save();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignedupPage()),);
                            }
                        },
                        child: Text("Sign Up"),
                      )
                    ),
                  ],
                ),
              )
            )
          ),
        ],
      ),
      )
    );
  }
}