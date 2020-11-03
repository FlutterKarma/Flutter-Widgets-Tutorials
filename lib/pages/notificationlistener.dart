import 'dart:async';

import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  @override
  _NotificationListenerWidgetState createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  final StreamController<String> _controller = StreamController();

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: StreamBuilder(
            initialData: '',
            stream: _controller.stream,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Text(snapshot.data);
            },
          ),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int position) {
                return ListTile(
                  title: Text('ListTile:$position'),
                );
              },
              itemCount: 30,
            ),
            onNotification: (notification) {
              var state = '';
              switch (notification.runtimeType) {
                case ScrollStartNotification:
                  state = 'Start scrolling';
                  break;
                case ScrollUpdateNotification:
                  state = 'Scrolling';
                  break;
                case ScrollEndNotification:
                  state = 'Scroll stop';
                  break;
                case OverscrollNotification:
                  state = 'Scroll to border';
                  break;
              }
              _controller.add('depth:${notification.depth}\n'
                  'state:$state}'
                  'metrics\n'
                  '-axisDirection:${notification.metrics.axisDirection}\n'
                  '-axis:${notification.metrics.axis}\n'
                  '-extentAfter:${notification.metrics.extentAfter}\n'
                  '-extentBefore:${notification.metrics.extentBefore}\n'
                  '-extentInside:${notification.metrics.extentInside}\n'
                  '-minScrollExtent:${notification.metrics.minScrollExtent}\n'
                  '-maxScrollExtent:${notification.metrics.maxScrollExtent}\n'
                  '-atEdge:${notification.metrics.atEdge}\n'
                  '-outOfRange:${notification.metrics.outOfRange}\n'
                  '-pixels:${notification.metrics.pixels}\n'
                  '-viewportDimension:${notification.metrics.viewportDimension}\n');
              return false;
            },
          ),
        ),
      ],
    );
  }
}
