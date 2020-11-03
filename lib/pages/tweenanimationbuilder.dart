import 'package:flutter/material.dart';

class TweenanimationWidget extends StatefulWidget {
  TweenanimationWidget({Key key}) : super(key: key);

  @override
  _TweenanimationWidgetState createState() => _TweenanimationWidgetState();
}

class _TweenanimationWidgetState extends State<TweenanimationWidget> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: targetValue),
      duration: Duration(seconds: 1),
      builder: (BuildContext context, double size, Widget child) {
        return IconButton(
          iconSize: size,
          color: Colors.blue,
          icon: child,
          onPressed: () {
            setState(() {
              targetValue = targetValue == 24.0 ? 48.0 : 24.0;
            });
          },
        );
      },
      child: Icon(Icons.aspect_ratio),
    );
  }
}
