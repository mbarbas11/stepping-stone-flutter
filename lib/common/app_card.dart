import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stepping_stone/common/globals.dart';


class AppCard extends StatefulWidget{
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;
  AppCard({@required this.child, this.borderStyle, this.boxShadowColor});
  @override
  _AppCardState createState() => new _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Card(
          margin: EdgeInsets.all(20.0),
          color: selection,
          child: new Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
            decoration: new BoxDecoration(
              color: w,
              border: widget.borderStyle ?? Border.all(
                    color: selection,
                    width:1,
                  ),
              boxShadow: [
                new BoxShadow(
                  color: widget.boxShadowColor ?? selection,
                  offset: new Offset(5.0, 5.0),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}