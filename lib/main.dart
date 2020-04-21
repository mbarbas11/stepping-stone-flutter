import 'package:flutter/material.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/start.dart';
import 'package:stepping_stone/pages/findentrepreneur.dart';






void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stepping Stone',
      theme: ThemeData(primaryColor: selection),
      home: StartPage()
      );
  }
}