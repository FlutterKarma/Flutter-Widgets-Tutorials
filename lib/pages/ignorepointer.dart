import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  @override
  _IgnorePointerWidgetState createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool ignoreTouch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('IgnoreTouch Touch?'),
        Switch(
            value: ignoreTouch,
            onChanged: (value) {
              setState(() => ignoreTouch = value);
            }),
        IgnorePointer(
          ignoring: ignoreTouch,
          child: RaisedButton(
            onPressed: () {},
            child: Text('IgnorePointer'),
          ),
        ),
      ],
    );
  }
}
