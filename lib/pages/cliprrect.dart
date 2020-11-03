import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        child: Align(
          alignment: Alignment.topLeft,
          widthFactor: 0.75,
          heightFactor: 0.75,
          child: Image.asset(
            'assets/logo.jpg',
          ),
        ),
      ),
    );
  }
}
