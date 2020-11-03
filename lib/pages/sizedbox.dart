import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Container(
            color: Colors.green,
            child: Text('SizedBox'),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Container(
            color: Colors.green,
            child: Text('SizedBox'),
          ),
        ),
      ],
    );
  }
}
