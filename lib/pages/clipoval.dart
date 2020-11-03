import 'package:flutter/material.dart';

class ClipOvalWidget extends StatefulWidget {
  @override
  _ClipOvalWidgetState createState() => _ClipOvalWidgetState();
}

class _ClipOvalWidgetState extends State<ClipOvalWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/logo.jpg',
      ),
    );
  }
}
