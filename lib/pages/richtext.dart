import 'package:flutter/material.dart';

class Richtexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            fontSize: 30,
          ),
          children: [
            TextSpan(
              text:
                  'The RichText widget displays text that uses multiple different styles.',
              style: TextStyle(
                color: Colors.green,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: 'The Text ',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            TextSpan(
              text:
                  'to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. ',
              style: TextStyle(
                color: Colors.green,
              ),
            )
          ]),
    );
  }
}
