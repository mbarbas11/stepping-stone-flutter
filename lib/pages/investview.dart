import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/videotest.dart';
import 'dart:async';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/pages/FindEntrepreneur.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:stepping_stone/pages/investing.dart';

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
                    ),
                    
                  )
                ),
                Image.asset('images/$img',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,),
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
                  ),
                  RaisedButton(
                          onPressed: () {
                            if(userview == "Bjorn"){
                              bjornrec = bjornrec +1;
                              }
                            if(userview == "Abe"){
                              aberec = aberec +1;
                              }
                              if(userview != "Bjorn" && userview != "Abe"){
                              rec = rec +1;
                              }
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>FindEntrepreneurPage()),);
                          },
                          child: Text("Recomend"),
                        ),
                  AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN1", style: TextStyle(fontSize: 17.0)),
                        Text("$pT1", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url1 != null){
                              url = url1;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
                      ]
                    ),
                  ),
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN2", style: TextStyle(fontSize: 17.0)),
                        Text("$pT2", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url2 != null) {url = url2;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
                      ]
                    ),
                  ),
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN3", style: TextStyle(fontSize: 17.0)),
                        Text("$pT3", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url3 != null){url = url3;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                              
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
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
                Image.asset('images/$img',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(snapshot.data.bio, style: TextStyle(fontSize: 17.0)),
                      ]
                    ),
                  ),
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            follow.add(userview);
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>FindEntrepreneurPage()),);
                          },
                          child: Text("Follow"),
                        ),
                        RaisedButton(
                          onPressed: () {
                            if(userview == "Bjorn"){
                              bjornrec = bjornrec +1;
                              }
                            if(userview == "Abe"){
                              aberec = aberec +1;
                              }
                              if(userview != "Bjorn" && userview != "Abe"){
                              rec = rec +1;
                              }
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>FindEntrepreneurPage()),);
                          },
                          child: Text("Recomend"),
                        ),
                        ]
                    ),
                  ),
                ),
                  AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN1", style: TextStyle(fontSize: 17.0)),
                        Text("$pT1", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url1 != null){
                              url = url1;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
                      ]
                    ),
                  ),
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN2", style: TextStyle(fontSize: 17.0)),
                        Text("$pT2", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url2 != null) {url = url2;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
                      ]
                    ),
                  ),
                ),
                AppCard(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text("$pN3", style: TextStyle(fontSize: 17.0)),
                        Text("$pT3", style: TextStyle(fontSize: 14.0)),
                        RaisedButton(
                            color: selection,
                            onPressed: () {
                              if (url3 != null){url = url3;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()),);}
                              
                            },
                            child: Text("Video", style: TextStyle(color: Colors.white)),
                          ),
                          RaisedButton(
                            color: selection,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Invest()),);
                            },
                            child: Text("Invest", style: TextStyle(color: Colors.white)),
                          ),
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