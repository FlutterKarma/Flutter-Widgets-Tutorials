import 'package:flutter/material.dart';
import 'package:fluttercheat/youtube.dart';
import './codepage.dart';

import 'backdrop.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Runpage extends StatefulWidget {
  final Widget _toshow;
  String title;
  Color appbarcolor;
  Runpage(this._toshow, this.title, this.appbarcolor);

  @override
  _RunpageState createState() => _RunpageState(_toshow, title, appbarcolor);
}

class _RunpageState extends State<Runpage> {
  Widget _toshow;
  String title;
  Color appbarcolor;
  _RunpageState(this._toshow, this.title, this.appbarcolor);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 85,
          decoration: BoxDecoration(
              color: appbarcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(56),
                topRight: Radius.circular(53),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Center(
                child: Text(
              title,
              style: TextStyle(color: Colors.white),
            )),
          ),
          width: double.infinity,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/fa.svg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child: AspectRatio(
                aspectRatio: 2 / 3.35,
                child: Scaffold(
                  body: Center(
                    child: _toshow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Panels extends StatelessWidget {
  final frontPanelVisible = ValueNotifier<bool>(false);
  String code;
  Widget run;
  String title;
  Color appbarcolor;
  String url;
  Panels({this.code, this.run, this.title, this.appbarcolor, this.url});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Backdrop(
          frontLayer: Runpage(run, title, appbarcolor),
          backLayer: BackPanel(
            frontPanelOpen: frontPanelVisible,
            code: code,
            title: title,
            url: url,
          ),
          panelVisible: frontPanelVisible,
          frontPanelOpenHeight: 90.0,
          frontHeaderHeight: 0,
          frontHeaderVisibleClosed: true,
        ),
      ),
    );
  }
}

class BackPanel extends StatefulWidget {
  BackPanel(
      {@required this.frontPanelOpen,
      @required this.code,
      this.title,
      this.url});
  final ValueNotifier<bool> frontPanelOpen;
  String code;
  String url;
  String title;
  @override
  createState() => _BackPanelState();
}

class _BackPanelState extends State<BackPanel> {
  bool panelOpen;

  @override
  initState() {
    super.initState();
    panelOpen = widget.frontPanelOpen.value;
    widget.frontPanelOpen.addListener(_subscribeToValueNotifier);
  }

  void _subscribeToValueNotifier() =>
      setState(() => panelOpen = widget.frontPanelOpen.value);

  /// Required for resubscribing when hot reload occurs
  @override
  void didUpdateWidget(BackPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.frontPanelOpen.removeListener(_subscribeToValueNotifier);
    widget.frontPanelOpen.addListener(_subscribeToValueNotifier);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: MarkdownPage('lib/pages/${widget.code}.dart'),
      ),
      Container(
        height: 60,
        width: double.infinity,
        color: Color(0XFFF616161),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              BackButton(
                color: Colors.white,
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: Icon(
                    Icons.code,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.frontPanelOpen.value = false;
                    });
                  }),
              Expanded(child: Container()),
              IconButton(
                  icon: Image.asset("assets/youtube.png"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoView(
                                title: widget.title,
                                videoUrl: widget.url,
                              )),
                    );
                  }),
              SizedBox(
                width: 70,
              ),
              Center(
                child: RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_arrow),
                        Text("run"),
                      ],
                    ),
                    color: Color(0XFFFBDBDBD),
                    onPressed: () {
                      widget.frontPanelOpen.value = true;
                      setState(() {});
                    }),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    ]);
  }
}
