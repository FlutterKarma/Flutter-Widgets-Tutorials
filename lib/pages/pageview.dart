import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  bool isVertical = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          width: double.infinity,
          height: 400,
          child: PageView(
            controller: PageController(),
            scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
            children: <Widget>[
              Center(
                child: Text('Page1'),
              ),
              Center(
                child: Text('Page2'),
              ),
              Center(
                child: Text('Page3'),
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () => setState(() => isVertical = !isVertical),
          child: Text('Change Direction'),
        ),
      ],
    );
  }
}
