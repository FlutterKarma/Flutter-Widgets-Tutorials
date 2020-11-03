import 'dart:math';
import 'package:flutter/material.dart';

import 'syntaxes/base.dart';
import 'syntaxes/index.dart';
import 'package:flutter/services.dart';

class SyntaxView extends StatefulWidget {
  SyntaxView(
      {@required this.code,
      @required this.syntax,
      this.syntaxTheme,
      this.withZoom,
      this.withLinesCount});

  final String code;
  final Syntax syntax;
  final bool withZoom;
  final bool withLinesCount;
  final SyntaxTheme syntaxTheme;

  @override
  State<StatefulWidget> createState() => SyntaxViewState();
}

class SyntaxViewState extends State<SyntaxView> {
  final key = new GlobalKey<ScaffoldState>();

  /// Zoom Controls
  double textScaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    assert(widget.code != null,
        "Code Content must not be null.\n===| if you are loading a String from assets, make sure you declare it in pubspec.yaml |===");
    assert(widget.syntax != null,
        "Syntax must not be null. select a Syntax by calling Syntax.(Language)");

    final int numLines = (widget.withLinesCount ?? true)
        ? '\n'.allMatches(widget.code).length + 1
        : 0;

    return Scaffold(
      key: key,
      body: Stack(alignment: AlignmentDirectional.bottomEnd, children: <Widget>[
        Container(
            padding: (widget.withLinesCount ?? true)
                ? EdgeInsets.only(left: 5, top: 10, right: 10, bottom: 10)
                : EdgeInsets.all(10),
            color:
                (widget.syntaxTheme ?? SyntaxTheme.dracula()).backgroundColor,
            constraints: BoxConstraints.expand(),
            child: Scrollbar(
                child: SingleChildScrollView(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:

                            /// Lines Count in the left with Code view
                            (widget.withLinesCount ?? true)
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(children: <Widget>[
                                        for (int i = 1; i <= numLines; i++)
                                          RichText(
                                              textScaleFactor: textScaleFactor,
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      fontFamily: 'monospace',
                                                      fontSize: 12.0,
                                                      color:
                                                          (widget.syntaxTheme ??
                                                                  SyntaxTheme
                                                                      .dracula())
                                                              .linesCountColor),
                                                  text: "$i"))
                                      ]),
                                      VerticalDivider(width: 5),
                                      RichText(
                                        textScaleFactor: textScaleFactor,
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontFamily: 'monospace',
                                              fontSize: 12.0),
                                          children: <TextSpan>[
                                            getSyntax(widget.syntax,
                                                    widget.syntaxTheme)
                                                .format(widget.code)
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                :

                                /// Only Code view
                                RichText(
                                    textScaleFactor: textScaleFactor,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'monospace',
                                          fontSize: 12.0),
                                      children: <TextSpan>[
                                        getSyntax(widget.syntax,
                                                widget.syntaxTheme)
                                            .format(widget.code)
                                      ],
                                    ),
                                  ))))),

        /// Zoom Controls
        if (widget.withZoom ?? false)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Clipboard.setData(new ClipboardData(text: widget.code));
                    key.currentState.showSnackBar(new SnackBar(
                      backgroundColor:
                          (widget.syntaxTheme == SyntaxTheme.dracula())
                              ? Colors.white
                              : Colors.black,
                      duration: Duration(seconds: 1),
                      content: new Text(
                        "Copied to Clipboard",
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                      ),
                    ));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Copy",
                          style: TextStyle(
                              color:
                                  (widget.syntaxTheme ?? SyntaxTheme.dracula())
                                      .zoomIconColor),
                        ),
                      ),
                      Icon(Icons.content_copy,
                          color: (widget.syntaxTheme ?? SyntaxTheme.dracula())
                              .zoomIconColor)
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.zoom_out,
                          color: (widget.syntaxTheme ?? SyntaxTheme.dracula())
                              .zoomIconColor),
                      onPressed: () => setState(() {
                            if (mounted)
                              textScaleFactor = max(0.8, textScaleFactor - 0.1);
                          })),
                  IconButton(
                      icon: Icon(Icons.zoom_in,
                          color: (widget.syntaxTheme ?? SyntaxTheme.dracula())
                              .zoomIconColor),
                      onPressed: () => setState(() {
                            if (mounted) {
                              if (textScaleFactor <= 4.0)
                                textScaleFactor += 0.1;
                              else
                                print(
                                    "Maximun zoomable scale (4.0) has been reached. more zooming can cause a crash.");
                            }
                          })),
                ],
              ),
            ],
          )
      ]),
    );
  }
}
