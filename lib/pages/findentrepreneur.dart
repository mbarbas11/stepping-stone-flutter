import 'package:flutter/material.dart';
import 'package:stepping_stone/pages/investview.dart';
import 'package:stepping_stone/pages/homei.dart';
import 'package:stepping_stone/common/globals.dart';

class FindEntrepreneurPage extends StatefulWidget {
  FindEntrepreneurPage({Key key}) : super(key: key);

  @override
  _FindEntrepreneurPageState createState() => _FindEntrepreneurPageState();
}


class _FindEntrepreneurPageState extends State<FindEntrepreneurPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            color: selection,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>InvestorPage()),);
              },
            child: Text("Home", style: TextStyle(color: w),)
          )
        ],
        automaticallyImplyLeading: false,
        title: Text("Entrepreneurs"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Abe'),
            onTap: () {
              userview = "Abe";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Agna"),
            onTap: () {
              userview = "Agna";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("BigAl"),
            onTap: () {
              userview = "BigAl";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Bjorn"),
            onTap: () {
              userview = "Bjorn";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Frankie"),
            onTap: () {
              userview = "Frankie";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("HandyJosh"),
            onTap: () {
              userview = "HandyJosh";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Scuba"),
            onTap: () {
              userview = "Scuba";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("TheColonel"),
            onTap: () {
              userview = "TheColonel";
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
        ],
      ),
    );
  }
}