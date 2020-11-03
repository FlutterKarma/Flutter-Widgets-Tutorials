import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatefulWidget {
  @override
  _ValueListenableBuilderWidgetState createState() =>
      _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState
    extends State<ValueListenableBuilderWidget> {
  int _counter = 0;

  final ValueNotifier<int> _notifier = ValueNotifier<int>(0);

  void _incrementCounter() {
    _counter++;
    _notifier.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: _notifier,
          builder: (context, value, widget) {
            return Text('Click with ValueListenableBuilder $value');
          },
        ),
        SizedBox(height: 20),
        Text('Click without setState $_counter'),
        SizedBox(height: 20),
        RaisedButton(
          onPressed: () {
            _incrementCounter();
          },
          child: Text('Click me'),
        ),
      ],
    );
  }
}
