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
            title: Text('Abe       Recomended: $aberec Times'),
            onTap: () {
              userview = "Abe";
              pN1 = abeNPOne;
              pT1 = abeTPOne;
              pN2 = abeNPTwo;
              pT2 = abeTPTwo;
              pN3 = gNThree;
              pT3 = gText;
              url1 = sham;
              url2 = squ;
              url3 = null;
              img = 'Abe.jpg';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Agna       Recomended: $rec Times"),
            onTap: () {
              userview = "Agna";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("BigAl       Recomended: $rec Times"),
            onTap: () {
              userview = "BigAl";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Bjorn       Recomended: $bjornrec Times"),
            onTap: () {
              userview = "Bjorn";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'Bjorn.jpg';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Frankie       Recomended: $rec Times"),
            onTap: () {
              userview = "Frankie";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("HandyJosh       Recomended: $rec Times"),
            onTap: () {
              userview = "HandyJosh";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("Scuba       Recomended: $rec Times"),
            onTap: () {
              userview = "Scuba";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
          ListTile(
            title: Text("TheColonel       Recomended: $rec Times"),
            onTap: () {
              userview = "TheColonel";
              pN1 = gNOne;
              pT1 = gText;
              pN2 = gNTwo;
              pT2 = gText;
              pN3 = gNThree;
              pT3 = gText;
              url1 = null;
              url2 = null;
              url3 = null;
              img = 'generic.png';
              Navigator.push(context, MaterialPageRoute(builder: (context) => InvestViewPage()),);
            },
          ),
        ],
      ),
    );
  }
}