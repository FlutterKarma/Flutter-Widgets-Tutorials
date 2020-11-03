import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Item1'),
        ),
        Divider(),
        ListTile(
          title: Text('Item2'),
        ),
        Divider(),
        ListTile(
          title: Text('Item3'),
        ),
        Divider(),
      ],
    );
  }
}
