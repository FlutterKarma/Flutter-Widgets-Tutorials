import 'package:flutter/material.dart';

class SemanticsWidget extends StatefulWidget {
  @override
  _SemanticsWidgetState createState() => _SemanticsWidgetState();
}

class _SemanticsWidgetState extends State<SemanticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          width: 100,
          height: 100,
          child: Semantics(label: "Red", child: Container(color: Colors.red)),
        ),
        Positioned(
          top: 25,
          left: 25,
          width: 100,
          height: 100,
          child:
              Semantics(label: "Green", child: Container(color: Colors.green)),
        ),
        Positioned(
          top: 50,
          left: 50,
          width: 100,
          height: 100,
          child: Semantics(label: "Blue", child: Container(color: Colors.blue)),
        )
      ],
    );
  }
}
