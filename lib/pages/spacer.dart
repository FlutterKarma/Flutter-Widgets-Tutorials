import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                color: Colors.yellow,
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.yellow,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
