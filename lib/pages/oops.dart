import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error = false;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('http://10.0.2.2:3000/users/$user');

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


class OopsPage extends StatefulWidget {
  OopsPage({Key key}) : super(key: key);

  @override
  _OopsPageState createState() => _OopsPageState();
}


class _OopsPageState extends State<OopsPage>{
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
                        Text("Oops, Don't know how we got here!"),
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