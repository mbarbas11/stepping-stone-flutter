import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/start.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error = false;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('http://10.0.2.2:3000/investors/$user');

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


class InvestorPage extends StatefulWidget {
  InvestorPage({Key key}) : super(key: key);

  @override
  _InvestorPageState createState() => _InvestorPageState();
}


class _InvestorPageState extends State<InvestorPage>{
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
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                return AppCard(
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(snapshot.data.type),
                        Text(snapshot.data.firstName),
                        Text(snapshot.data.lastName),
                        Text("Welcome $user"),
                        Container(
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
                            child: Text("Log out", style: TextStyle(color: w),)
                          )
                        )
                      ]
                    )
                  )
                );
              }
            )
          ]
        )
      )
    );
  }
}