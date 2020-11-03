import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Smiley(),
            Smiley(
              mouthAngle: 3.14,
            ),
            Smiley(
              mouthAngle: 0.5,
              rightEyesSize: 3,
              showTongue: true,
            ),
            Smiley(
              leftEyesSize: 2,
            ),
            Smiley(
              leftEyesSize: 2,
              showTongue: true,
            ),
            Smiley(
              leftEyesSize: 2,
              rightEyesSize: 2,
              emojiColor: Colors.green,
              mouthHeight: 0.1,
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

class Smiley extends StatelessWidget {
  const Smiley(
      {this.mouthAngle = 0,
      this.leftEyesSize = 1,
      this.rightEyesSize = 1,
      this.showTongue = false,
      this.emojiColor = Colors.yellow,
      this.mouthHeight = 1.0});

  final double mouthAngle;

  final int leftEyesSize;

  final int rightEyesSize;

  final bool showTongue;
  final Color emojiColor;
  final double mouthHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomPaint(
          painter: SmileyPaint(
              mouthAngle: mouthAngle,
              leftEyesSize: leftEyesSize,
              rightEyesSize: rightEyesSize,
              showTongue: showTongue,
              emojiColor: emojiColor,
              mouthHeight: mouthHeight),
          size: Size.square(200),
        ),
      ),
    );
  }
}

class SmileyPaint extends CustomPainter {
  const SmileyPaint(
      {this.mouthAngle = 0,
      this.leftEyesSize = 1,
      this.rightEyesSize = 1,
      this.showTongue = false,
      this.emojiColor = Colors.yellow,
      this.mouthHeight = 1.0});

  final double mouthAngle;

  final int leftEyesSize;

  final int rightEyesSize;

  final bool showTongue;
  final Color emojiColor;
  final double mouthHeight;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = emojiColor;
    canvas.drawCircle(Offset(100, 100), size.height / 2, paint);
    paint.color = Colors.white;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(100, (mouthAngle * 10) + 130),
            width: 100,
            height: 80 * mouthHeight),
        mouthAngle,
        3.14,
        true,
        paint);
    canvas.drawCircle(
        Offset(60, 70), leftEyesSize * 10.0, paint..color = Colors.black);
    canvas.drawCircle(
        Offset(140, 70), rightEyesSize * 10.0, paint..color = Colors.black);
    var tongueRect = Rect.fromPoints(Offset(75, 150), Offset(125, 220));
    var cRadius = Radius.circular(20);
    if (this.showTongue)
      canvas.drawRRect(
          RRect.fromRectAndCorners(tongueRect,
              bottomLeft: cRadius, bottomRight: cRadius),
          paint..color = Colors.pink);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
