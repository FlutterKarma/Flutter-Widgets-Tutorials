import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  double slideValue = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Slider(
            value: slideValue,
            onChanged: (value) {
              setState(() => slideValue = value.toDouble());
            },
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
            width: 60,
            height: 60,
          ),
          Opacity(
            opacity: slideValue,
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.yellow,
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
