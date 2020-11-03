import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatefulWidget {
  @override
  _ConstrainedBoxWidgetState createState() => _ConstrainedBoxWidgetState();
}

class _ConstrainedBoxWidgetState extends State<ConstrainedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(
        width: 200,
        height: 200,
      ),
      child: Container(
        color: Colors.amber,
        margin: EdgeInsets.all(10),
        child: Text(
          'Fill the container with content' * 5,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
