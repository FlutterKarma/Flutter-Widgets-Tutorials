import 'package:flutter/material.dart';
import 'dart:math' as math;

class CountModel extends InheritedWidget {
  final int count;

  CountModel({this.count, child}) : super(child: child);

  @override
  bool updateShouldNotify(CountModel oldWidget) {
    if (oldWidget.count != count) {
      return true;
    }
    return false;
  }

  static CountModel of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountModel) as CountModel;
}

class InheritedWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: Theme.of(context),
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CountModel(
        count: count,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[const CounterText(), const CounterText2()],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ++count;
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Container(
              color: _randomColor(),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {});
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText();

  @override
  Widget build(BuildContext context) {
    CountModel model = CountModel.of(context);
    return Text(
      'Count: ${model.count}',
      style: TextStyle(color: _randomColor(), fontSize: 30),
    );
  }
}

class CounterText2 extends StatelessWidget {
  const CounterText2();

  @override
  Widget build(BuildContext context) {
    CountModel model = CountModel.of(context);
    return Text(
      'Count: ${model.count}',
      style: TextStyle(color: _randomColor(), fontSize: 30),
    );
  }
}

Color _randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}
