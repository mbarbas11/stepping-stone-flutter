import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'dart:async';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/pages/homei.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

bool error = false;
String newbio;

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


class UpdateBioIPage extends StatefulWidget {
  UpdateBioIPage({Key key}) : super(key: key);

  @override
  _UpdateBioIPageState createState() => _UpdateBioIPageState();
}


class _UpdateBioIPageState extends State<UpdateBioIPage>{
Future<Album> futureAlbum;

final key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
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
                  child: Form(
                    key: key,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: "Bio",),
                            onSaved: (value) => newbio = value,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 20.0),
                            child: FlatButton(
                              color:selection,
                              textColor: w,
                              onPressed: () {
                                this.key.currentState.save();
                                updateBio(newbio);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => InvestorPage()),);
                              },
                              child: Text("Update Bio"),
                            )
                          ),
                        ],
                      )
                    ),
                  ),
                )
              ]
            )
          );
        }
      )
    );
  }

    updateBio(String bio) async {
      Map data = {
        'test': bio
      };
      var jsonResponse = null;
      await http.post("http://10.0.2.2:3000/investers/$user", body: data);
    }






}