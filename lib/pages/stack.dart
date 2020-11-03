import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellow,
      height: 300,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            color: Colors.cyan,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.red,
            width: 150,
            height: 150,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
