import 'package:flutter/material.dart';

class SafeAreaWidget extends StatefulWidget {
  @override
  _SafeAreaWidgetState createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: isEnabled,
        bottom: isEnabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                'Adaptation in full screen and excavation screen can avoid the notch area of ​​system settings',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () => setState(() =>
                  isEnabled == true ? isEnabled = false : isEnabled = true),
              child: Text(isEnabled ? "Disable SafeArea" : "Enable SafeArea"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back'),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                'SafeArea can set whether the bottom and top need to be enabled separately',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
