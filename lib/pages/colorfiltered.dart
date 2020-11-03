import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatefulWidget {
  @override
  _ColorFilteredWidgetState createState() => _ColorFilteredWidgetState();
}

class _ColorFilteredWidgetState extends State<ColorFilteredWidget> {
  BlendMode blendMode = BlendMode.modulate;
  Color selectedcolor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ColorFiltered(
          colorFilter: ColorFilter.mode(selectedcolor, blendMode),
          child: FlutterLogo(),
        ),
        DropdownButton<BlendMode>(
          value: blendMode,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (BlendMode newValue) {
            setState(() {
              blendMode = newValue;
            });
          },
          items: <BlendMode>[
            BlendMode.modulate,
            BlendMode.colorBurn,
            BlendMode.darken,
            BlendMode.hue,
            BlendMode.exclusion,
            BlendMode.hardLight,
            BlendMode.screen,
            BlendMode.luminosity
          ].map<DropdownMenuItem<BlendMode>>((BlendMode value) {
            return DropdownMenuItem<BlendMode>(
              value: value,
              child: Text("$value"),
            );
          }).toList(),
        ),
        DropdownButton<Color>(
          value: selectedcolor,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (Color newValue) {
            setState(() {
              selectedcolor = newValue;
            });
          },
          items: <Colorwithname>[
            Colorwithname(Colors.red, "red"),
            Colorwithname(Colors.green, "green"),
            Colorwithname(Colors.blue, "blue"),
            Colorwithname(Colors.yellow, "yellow"),
          ].map<DropdownMenuItem<Color>>((Colorwithname value) {
            return DropdownMenuItem<Color>(
              value: value._color,
              child: Text("${value._name}"),
            );
          }).toList(),
        )
      ],
    );
  }
}

class Colorwithname {
  final Color _color;
  final String _name;
  Colorwithname(this._color, this._name);
}
