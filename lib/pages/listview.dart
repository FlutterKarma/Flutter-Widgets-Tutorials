import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 40,
      children: <Widget>[
        Text('Title1'),
        Text('Title2'),
        Text('Title3'),
        Icon(Icons.account_balance_wallet),
        Icon(Icons.access_time),
        Icon(Icons.adb),
        ListTile(
          leading: Text('line1'),
        ),
        ListTile(
          leading: Text('line2'),
        ),
        ListTile(
          leading: Text('line3'),
        )
      ],
    );
  }
}
