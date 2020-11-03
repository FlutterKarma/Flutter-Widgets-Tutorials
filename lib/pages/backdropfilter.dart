import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatefulWidget {
  @override
  _BackdropFilterWidgetState createState() => _BackdropFilterWidgetState();
}

class _BackdropFilterWidgetState extends State<BackdropFilterWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRect(
          child: Stack(
            children: <Widget>[
              FlutterLogo(
                size: 200,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: value,
                    sigmaY: value,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              )
            ],
          ),
        ),
        Text('Change blur value'),
        Slider(
            value: value,
            min: 0,
            max: 10,
            onChanged: (value) {
              setState(() => this.value = value);
            })
      ],
    );
  }
}
