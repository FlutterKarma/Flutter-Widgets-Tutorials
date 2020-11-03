import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  @override
  _FittedBoxWidgetState createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  var boxFitSelection = BoxFit.none;
  var alignSelection = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MultiSelectionWidget(
          'BoxFit',
          BoxFit.values,
          BoxFit.values,
          (value) {
            setState(() => boxFitSelection = value);
          },
        ),
        MultiSelectionWidget(
          'Alignment',
          [
            Alignment.bottomLeft,
            Alignment.center,
            Alignment.centerLeft,
            Alignment.bottomRight,
            Alignment.bottomCenter,
            Alignment.centerRight,
            Alignment.topCenter,
            Alignment.topLeft,
            Alignment.topRight,
          ],
          [
            'bottomLeft',
            'center',
            'centerLeft',
            'bottomRight',
            'bottomCenter',
            'centerRight',
            'topCenter',
            'topLeft',
            'topRight',
          ],
          (value) {
            setState(() => alignSelection = value);
          },
        ),
        Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            constraints: BoxConstraints(maxWidth: 200),
            margin: const EdgeInsets.all(10),
            child: FittedBox(
              fit: boxFitSelection,
              alignment: alignSelection,
              child: Container(
                color: Colors.red,
                child: Text(
                  'FittedBox',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
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
