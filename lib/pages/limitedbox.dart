import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 50,
      child: Text(
        "A",
        style: TextStyle(fontSize: 200),
      ),
    );
  }
}
