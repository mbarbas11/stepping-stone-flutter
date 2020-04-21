import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'dart:async';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/pages/FindEntrepreneur.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error = false;


Future<Album> fetchAlbum() async {
  final response =
      await http.get('http://10.0.2.2:3000/users/$userview');

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


class InvestViewPage extends StatefulWidget {
  InvestViewPage({Key key}) : super(key: key);

  @override
  _InvestViewPageState createState() => _InvestViewPageState();
}


class _InvestViewPageState extends State<InvestViewPage>{
Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context){
    if(follow.contains(userview)){
    return Scaffold(
       appBar: AppBar(
        title: Text("Viewing $userview"),
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
                        Text(snapshot.data.bio, style: TextStyle(fontSize: 17.0)),
                      ]
                    ),
                  ),
                ),
                  RaisedButton(
                    onPressed: () {
                      follow.remove(userview);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FindEntrepreneurPage()),);
                    },
                    child: Text("Unfollow"),
                  )
              ]
            )
          );
        }
      )
    );
  }else{
    return Scaffold(
       appBar: AppBar(
        title: Text("Viewing $userview"),
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
                        Text(snapshot.data.bio, style: TextStyle(fontSize: 17.0)),
                      ]
                    ),
                  ),
                ),
                  RaisedButton(
                    onPressed: () {
                      follow.add(userview);
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>FindEntrepreneurPage()),);
                    },
                    child: Text("Follow"),
                  )
              ]
            )
          );
        }
      )
    );
  }
  }
}