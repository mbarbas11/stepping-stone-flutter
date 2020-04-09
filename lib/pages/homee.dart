import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/updatebioe.dart';
import 'package:stepping_stone/pages/start.dart';
import 'dart:async';
import 'package:stepping_stone/common/app_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error = false;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('http://10.0.2.2:3000/users/$user');

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final String firstName;
  final String lastName;
  final String email;
  final String bio;
  final String userName;
  final String id;

  Album({this.firstName, this.lastName, this.email, this.userName, this.bio, this.id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      userName: json['userName'],
      bio: json['bio'],
      id: json['id'],
    );
  }
}


class EntrepreneurPage extends StatefulWidget {
  EntrepreneurPage({Key key}) : super(key: key);

  @override
  _EntrepreneurPageState createState() => _EntrepreneurPageState();
}


class _EntrepreneurPageState extends State<EntrepreneurPage>{
Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context){

    if (user == "Bjorn"){
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $user"),
        actions: <Widget>[
          FlatButton(
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
            child: Text("Log out", style: TextStyle(color: w),)
          )
        ]
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppCard(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(snapshot.data.firstName, style: TextStyle(fontSize: 25.0, color: selection),),
                        Text(" ", style: TextStyle(fontSize: 25.0, color: selection)),
                        Text(snapshot.data.lastName, style: TextStyle(fontSize: 25.0, color: selection)),
                      ],
                    )
                  )
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$bjorn", style: TextStyle(fontSize: 17.0)),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child:RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateBioEPage()),);
                            },
                            child: Text("Update Bio", style: TextStyle(color: Colors.white)),
                          )
                        )
                      ]
                    ),
                  ),
                ),
              ]
            )
          );
        }
      )
    );
  } else if (user == "Abe"){
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $user"),
        actions: <Widget>[
          FlatButton(
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
            child: Text("Log out", style: TextStyle(color: w),)
          )
        ]
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppCard(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(snapshot.data.firstName, style: TextStyle(fontSize: 25.0, color: selection),),
                        Text(" ", style: TextStyle(fontSize: 25.0, color: selection)),
                        Text(snapshot.data.lastName, style: TextStyle(fontSize: 25.0, color: selection)),
                      ],
                    )
                  )
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$abe", style: TextStyle(fontSize: 17.0)),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child:RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateBioEPage()),);
                            },
                            child: Text("Update Bio", style: TextStyle(color: Colors.white)),
                          )
                        )
                      ]
                    ),
                  ),
                ),
              ]
            )
          );
        }
      )
    );
  } else {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $user"),
        actions: <Widget>[
          FlatButton(
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
            child: Text("Log out", style: TextStyle(color: w),)
          )
        ]
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppCard(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(snapshot.data.firstName, style: TextStyle(fontSize: 25.0, color: selection),),
                        Text(" ", style: TextStyle(fontSize: 25.0, color: selection)),
                        Text(snapshot.data.lastName, style: TextStyle(fontSize: 25.0, color: selection)),
                      ],
                    )
                  )
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$bio", style: TextStyle(fontSize: 17.0)),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child:RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateBioEPage()),);
                            },
                            child: Text("Update Bio", style: TextStyle(color: Colors.white)),
                          )
                        )
                      ]
                    ),
                  ),
                ),
              ]
            )
          );
        }
      )
    );
  }
  }
}