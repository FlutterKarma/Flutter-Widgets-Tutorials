import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                width: 60,
                height: 60,
              )),
        ],
      ),
    );
  }
}
