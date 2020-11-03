import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  var counterStream = Stream<double>.periodic(
      Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StreamBuilder(
            stream: _isButtonClicked ? counterStream : null,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(24),
                    height: snapshot.data,
                    width: snapshot.data,
                    color: Colors.amber[500],
                  ),
                  Container(
                    margin: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(6),
                          child: Text(
                            "Height: ${snapshot.data}",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6),
                          child: Text(
                            "Width: ${snapshot.data}",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          RaisedButton(
            onPressed: _isButtonClicked == false
                ? () {
                    setState(() {
                      _isButtonClicked == false
                          ? _isButtonClicked = true
                          : _isButtonClicked = false;
                    });
                  }
                : null,
            child: Text("Start Stream"),
          ),
        ],
      ),
    );
  }
}
