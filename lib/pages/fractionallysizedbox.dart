import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatefulWidget {
  @override
  _FractionallySizedBoxWidgetState createState() =>
      _FractionallySizedBoxWidgetState();
}

class _FractionallySizedBoxWidgetState
    extends State<FractionallySizedBoxWidget> {
  double widthFactor = 0.5;
  double heightFactor = 0.5;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text('widthFactor 0-2'),
          Slider(
              value: widthFactor,
              min: 0,
              max: 2,
              onChanged: (v) {
                setState(() => widthFactor = v);
              }),
          Text('heightFactor 0-2'),
          Slider(
              value: heightFactor,
              min: 0,
              max: 2,
              onChanged: (v) {
                setState(() => heightFactor = v);
              }),
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              widthFactor: widthFactor,
              heightFactor: heightFactor,
              child: Container(color: Colors.red),
            ),
          ),
          SizedBox(height: 100),
          Text(
              'widthFactor: ${widthFactor.toStringAsFixed(2)}, heightFactor: ${heightFactor.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
