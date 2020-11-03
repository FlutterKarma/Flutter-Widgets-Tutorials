import 'package:flutter/material.dart';

class SelectableWidget extends StatefulWidget {
  @override
  _SelectableWidgetState createState() => _SelectableWidgetState();
}

class _SelectableWidgetState extends State<SelectableWidget> {
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'Hello! How are you?',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
