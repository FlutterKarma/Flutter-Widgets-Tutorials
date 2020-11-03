import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatefulWidget {
  @override
  _AbsorbPointerWidgetState createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  bool canTouch = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Can Touch?'),
        Switch(
            value: canTouch,
            onChanged: (value) {
              setState(() => canTouch = value);
            }),
        AbsorbPointer(
          absorbing: !canTouch,
          child: RaisedButton(
            onPressed: () {},
            child: Text('AbsorbPointer'),
          ),
        ),
      ],
    );
  }
}
