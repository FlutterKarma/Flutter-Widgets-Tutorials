import 'package:flutter/material.dart';

class DraggableScrollSheeetWidget extends StatefulWidget {
  @override
  _DraggableScrollSheeetWidgetState createState() =>
      _DraggableScrollSheeetWidgetState();
}

class _DraggableScrollSheeetWidgetState
    extends State<DraggableScrollSheeetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
