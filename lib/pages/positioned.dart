import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
          ),
          Positioned(
            top: 20,
            left: 20,
            width: 100,
            height: 100,
            child: Container(
              color: Colors.blue,
              child: Text('Child with Positioned'),
            ),
          ),
          PositionedDirectional(
            start: 80,
            top: 140,
            child: Container(
              color: Colors.orange,
              child: Text('Child with PositionedDirectional'),
            ),
          ),
        ],
      ),
    );
  }
}
