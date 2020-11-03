import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  @override
  _AlignWidgetState createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  double xAlign = 0;
  double yAlign = 0;
  double widthFactor = 1;
  double heightFactor = 1;
  bool useSlider = false;

  var alignSelection = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            alignment: useSlider ? Alignment(xAlign, yAlign) : alignSelection,
            width: 200,
            height: 200,
            color: Colors.orange,
            child: FlutterLogo(
              size: 50,
            ),
          ),
          Text('x'),
          Slider(
            min: -1,
            max: 1,
            value: xAlign,
            onChanged: (value) {
              useSlider = true;
              setState(() => xAlign = value);
            },
          ),
          Text('y'),
          Slider(
            min: -1,
            max: 1,
            value: yAlign,
            onChanged: (value) {
              useSlider = true;
              setState(() => yAlign = value);
            },
          ),
        ],
      ),
    );
  }
}
