import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  @override
  _ReorderableListViewWidgetState createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  List<String> items = List.generate(7, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ReorderableListView(
            children: items.map((value) {
              return ListTile(
                key: ValueKey(value),
                title: Text(value),
              );
            }).toList(),
            onReorder: (oldIndex, newIndex) {
              setState(() {
                var removeItem = items.removeAt(oldIndex);
                items.insert(newIndex, removeItem);
              });
            },
            header: Text('Header: Change order by drag'),
          ),
        ),
      ],
    );
  }
}
