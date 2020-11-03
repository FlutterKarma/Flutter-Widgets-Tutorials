import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Long press popup prompt'),
        Tooltip(
          message: 'accessibility tooltip',
          verticalOffset: 48,
          child: Icon(
            Icons.accessibility,
            size: 50,
          ),
        ),
      ],
    );
  }
}
