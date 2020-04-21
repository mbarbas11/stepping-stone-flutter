import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/oops.dart';
import 'package:stepping_stone/pages/login.dart';
import 'package:stepping_stone/pages/homei.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('http://10.0.2.2:3000/investors/$user');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    try{return Album.fromJson(json.decode(response.body));}
    catch (e){
      error = true;
    }
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    error = true;
  }
}

class Album {
  final String firstName;
  final String lastName;
  final String email;
  final String bio;
  final String userName;
  final String type;

  Album({this.firstName, this.lastName, this.email, this.userName, this.bio, this.type});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      userName: json['userName'],
      bio: json['bio'],
      type: json['type'],
    );
  }
}


class LogedinInvestPage extends StatefulWidget {
  LogedinInvestPage({Key key}) : super(key: key);

  @override
  _LogedinInvestPageState createState() => _LogedinInvestPageState();
}


class _LogedinInvestPageState extends State<LogedinInvestPage>{
Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

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
            FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                try{
                  return AppCard(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: <Widget>[
                          Text(snapshot.data.firstName),
                          Text("You are loged in"),
                          Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                            child: RaisedButton(
                              color: selection,
                              onPressed: () {
                                if (snapshot.data.type == "Investor"){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => InvestorPage()),);
                                } else {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OopsPage()),);
                                }
                              },
                              child: Text("Continue", style: TextStyle(color: w),),
                            )
                          )
                        ]
                      )
                    )
                  );
                } catch (e){
                  return AppCard(
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: <Widget>[
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
                                },
                              child: Text("Invalid User", style: TextStyle(color: w),),
                            )
                          )
                        ]
                      )
                    )
                  );
                }
              }
            )
          ]
        )
      )
    );
  }
}