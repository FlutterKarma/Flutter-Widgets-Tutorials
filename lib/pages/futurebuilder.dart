import 'dart:async';

import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  var show = '';
  bool isClick = false;

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3));
    return Future.value('Fetch data from mock');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: Center(
            child: FutureBuilder<String>(
              future: isClick ? getData() : null,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Text('No FutureBuilder attached');
                    break;
                  case ConnectionState.waiting:
                    return CircularProgressIndicator();
                    break;
                  case ConnectionState.active:
                    return CircularProgressIndicator();
                    break;
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return Text(snapshot.data.toString());
                    }
                    break;
                  default:
                    return CircularProgressIndicator();
                    break;
                }
              },
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: Text('Fetch data'),
        ),
      ],
    );
  }
}
