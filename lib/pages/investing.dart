import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';
import 'package:stepping_stone/common/globals.dart';
import 'package:stepping_stone/pages/findentrepreneur.dart';




class Invest extends StatefulWidget {
  Invest({Key key}) : super(key: key);

  @override
  _InvestState createState() => _InvestState();
}


class _InvestState extends State<Invest>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Investing in $userview's project!"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          AppCard(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text("How much are you investing?"),
                  TextFormField(
                      decoration: InputDecoration(labelText: "Ammount"),
                      onChanged: (value) {},
                    ),
                    RaisedButton(
                        color: selection,
                        onPressed: () {
                          
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FindEntrepreneurPage()),);
                           
                          },
                        child: Text("Invest", style: TextStyle(color: w),),
                      )
                ],
              ),
            )
            ),
        ],
        ),
      )
    );
  }
}