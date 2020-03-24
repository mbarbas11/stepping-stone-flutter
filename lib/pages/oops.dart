import 'package:flutter/material.dart';
import 'package:stepping_stone/common/app_card.dart';




class OopsPage extends StatefulWidget {
  OopsPage({Key key}) : super(key: key);

  @override
  _OopsPageState createState() => _OopsPageState();
}


class _OopsPageState extends State<OopsPage>{
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
            AppCard(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text("Oops, Don't know how we got here!"),
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}