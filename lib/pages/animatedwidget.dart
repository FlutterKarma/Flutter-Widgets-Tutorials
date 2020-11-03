import 'package:flutter/material.dart';

class AnimatedWidgetWidget extends StatefulWidget {
  @override
  _AnimatedWidgetWidgetState createState() => _AnimatedWidgetWidgetState();
}

class _AnimatedWidgetWidgetState extends State<AnimatedWidgetWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      lowerBound: 1,
      upperBound: 12,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTransition(width: _controller),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => _controller.stop(),
                    child: Text("Stop"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () => _controller.repeat(reverse: true),
                    child: Text("Go"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);

  Animation<double> get _width => listenable;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => null,
      borderSide: BorderSide(
        width: _width.value,
      ),
      child: Text("Click Me!"),
    );
  }
}
