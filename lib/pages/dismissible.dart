import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> items = List.generate(10, (index) => "item $index");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(items[index]),
                child: ListTile(
                  title: Text(items[index]),
                ),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                background: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.blue,
                  child: Icon(Icons.check),
                ),
                secondaryBackground: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.green,
                  child: Icon(Icons.cancel),
                ),
              );
            },
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
