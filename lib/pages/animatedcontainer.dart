import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double size = 200;
  Color color = Colors.blue.shade200;
  double radius = 0;
  Future future = Future.delayed(Duration(seconds: 3));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AnimatedContainer(
            margin: EdgeInsets.only(top: 20),
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
            ),
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
          ),
          RaisedButton(
            onPressed: () {
              size = Random().nextInt(300).toDouble();
              setState(() {});
            },
            child: Text('Change Size'),
          ),
          RaisedButton(
            onPressed: () {
              color = Colors.blue[100 + 100 * Random().nextInt(8)];
              setState(() {});
            },
            child: Text('Change Color'),
          ),
          RaisedButton(
            onPressed: () {
              radius = 100 * Random().nextDouble();
              setState(() {});
            },
            child: Text('Change Radius'),
          ),
        ],
      ),
    );
  }
}
