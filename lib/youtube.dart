import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoView extends StatefulWidget {
  final String videoUrl;
  final String title;

  VideoView({Key key, @required this.videoUrl, @required this.title})
      : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  YoutubePlayerController _controller;

  @override
  void dispose() {
    _freePortraitLock();
    super.dispose();
  }

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl),
      flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: true,
          loop: false,
          enableCaption: false),
    );

    _lockInPortrait();
    super.initState();
  }

  Future<void> _lockInPortrait() async {
    await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Future<void> _freePortraitLock() async {
    await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          '${widget.title}',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0x000000).withOpacity(1),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            color: Colors.black,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 56.0),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                bottomActions: <Widget>[
                  const SizedBox(width: 14.0),
                  CurrentPosition(),
                  const SizedBox(width: 8.0),
                  ProgressBar(isExpanded: true),
                  RemainingDuration(),
                ],
                aspectRatio: 4 / 3,
                progressIndicatorColor: Colors.white,
                onReady: () {
                  print('Player is ready.');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
