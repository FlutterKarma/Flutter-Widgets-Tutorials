import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  @override
  _LayoutBuilderWidgetState createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  double index = 300;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Slider(
            value: index,
            min: 300,
            max: 400,
            onChanged: (value) {
              setState(() => index = value);
            },
          ),
          Container(
            color: Colors.red,
            width: index,
            height: index,
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 350) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.yellow,
                  ),
                );
              } else {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 300,
                    height: 100,
                    color: Colors.blue,
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
