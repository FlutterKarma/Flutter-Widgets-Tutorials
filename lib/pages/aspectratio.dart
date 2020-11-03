import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Show AspectRatio 4:3'),
        Container(
          color: Colors.red,
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: Image(
              image: AssetImage('assets/logo.jpg'),
            ),
          ),
        ),
        Text('Show AspectRatio 3:4'),
        Container(
          color: Colors.blue,
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Image(
              image: AssetImage('assets/logo.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
