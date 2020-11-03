import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherWidgetState createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  bool switched = false;

  Widget _myAnimatedWidget = Container(
    key: ValueKey(1),
    width: 250.0,
    height: 250.0,
    color: Color(0xfff18FFFF),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(
                    child: child,
                    scale: animation,
                  ),
              child: _myAnimatedWidget),
        ),
        SizedBox(
          height: 80,
        ),
        FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () => setState(() {
            _myAnimatedWidget = switched
                ? Container(
                    key: ValueKey(2),
                    width: 250.0,
                    height: 250.0,
                    color: Color(0xfff18FFFF),
                  )
                : Container(
                    key: ValueKey(3),
                    width: 250.0,
                    height: 250.0,
                    color: Color(0xfffFF5252),
                  );
            switched ? switched = false : switched = true;
          }),
          icon: Icon(
            Icons.swap_horiz,
            color: Colors.white,
          ),
          label: Text(
            "Switch Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
