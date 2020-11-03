import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(16),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
