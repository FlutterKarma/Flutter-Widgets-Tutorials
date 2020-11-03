import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  double scale = 1;
  double angle = 0;
  double offsetX = 0;
  var rotatePoint = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text('Transform scale rotate translate'),
          Transform.scale(
            scale: scale,
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child: Center(child: Text('scale')),
            ),
          ),
          Slider(
            value: scale,
            min: 0.5,
            max: 1.5,
            onChanged: (value) {
              setState(() {
                scale = value;
              });
            },
          ),
          Transform.rotate(
            angle: angle,
            alignment: rotatePoint,
            child: Container(
              color: Colors.teal,
              width: 100,
              height: 100,
              child: Center(child: Text('rotate')),
            ),
          ),
          MultiSelectionWidget(
            'Rotate Point',
            [
              Alignment.topLeft,
              Alignment.centerLeft,
              Alignment.center,
              Alignment.bottomRight,
              Alignment.bottomCenter,
              Alignment.bottomLeft,
              Alignment.centerRight,
              Alignment.topCenter,
              Alignment.topRight,
            ],
            [
              'topLeft',
              'centerLeft',
              'center',
              'bottomRight',
              'bottomCenter',
              'bottomLeft',
              'centerRight',
              'topCenter',
              'topRight',
            ],
            (value) {
              setState(() => rotatePoint = value);
            },
          ),
          Slider(
            value: angle,
            min: -pi / 2,
            max: pi / 2,
            onChanged: (value) {
              setState(() {
                angle = value;
              });
            },
          ),
          Transform.translate(
            offset: Offset(offsetX, 0),
            child: Container(
              color: Colors.cyan,
              width: 100,
              height: 100,
              child: Center(child: Text('translate')),
            ),
          ),
          Slider(
            value: offsetX,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() => offsetX = value);
            },
          ),
        ],
      ),
    );
  }
}

class MultiSelectionWidget extends StatefulWidget {
  final List items;
  final List shows;
  final ValueChanged onChange;
  final String title;

  MultiSelectionWidget(this.title, this.items, this.shows, this.onChange);

  @override
  _MultiSelectionWidgetState createState() => _MultiSelectionWidgetState();
}

class _MultiSelectionWidgetState extends State<MultiSelectionWidget> {
  var selectValue;

  @override
  Widget build(BuildContext context) {
    return widget.items.length > 2
        ? ListTile(
            title: Text(widget.title),
            trailing: DropdownButton(
              hint: Text('choose a item'),
              value: selectValue,
              items: widget.items.asMap().keys.map((value) {
                return DropdownMenuItem(
                  value: widget.items[value],
                  child: Text(widget.shows[value].toString()),
                );
              }).toList(),
              onChanged: (value) {
                selectValue = value;
                widget.onChange(value);
              },
            ),
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: widget.items.map((value) {
                return Row(
                  children: <Widget>[
                    Radio(
                      value: value,
                      groupValue: selectValue,
                      onChanged: (value) {
                        selectValue = value;
                        widget.onChange(value);
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        selectValue = value;
                        widget.onChange(value);
                      },
                      child: Text('$value'),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
  }
}
