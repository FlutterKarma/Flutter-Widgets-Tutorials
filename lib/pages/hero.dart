import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HeroWidget extends StatefulWidget {
  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  void initState() {
    super.initState();
    timeDilation = 5;
  }

  @override
  void dispose() {
    super.dispose();
    timeDilation = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(
          tag: 'hero',
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              child: FlutterLogo(),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => HeroSecondPage('hero')),
            );
          },
          child: Text('Goto'),
        ),
      ],
    );
  }
}

class HeroSecondPage extends StatelessWidget {
  final String tag;

  HeroSecondPage(this.tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Hero(
            tag: tag,
            child: ClipOval(
              child: Container(
                width: 200,
                height: 200,
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
