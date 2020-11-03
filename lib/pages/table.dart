import 'dart:math';

import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Table(
            border: TableBorder.all(),
            columnWidths: {1: FractionColumnWidth(.7)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  randomHeightContainer(),
                  randomHeightContainer(),
                ],
              ),
              TableRow(
                children: [
                  randomHeightContainer(),
                  randomHeightContainer(),
                ],
              ),
              TableRow(
                children: [
                  randomHeightContainer(),
                  randomHeightContainer(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget randomHeightContainer() {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.yellow,
      height: 10 + Random().nextInt(100).toDouble(),
      width: 60,
    );
  }
}
