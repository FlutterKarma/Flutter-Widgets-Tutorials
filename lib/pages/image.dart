import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Image From Asset",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image(
          image: AssetImage('assets/logo.jpg'),
          height: 300,
          width: 300,
          gaplessPlayback: true,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Image From Net with progress",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://img.favpng.com/25/9/1/dart-google-developers-flutter-android-png-favpng-vi7iwNmVaBCVr91EF35XrnFfc.jpg',
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes
                    : null,
              ),
            );
          },
        ),
      ],
    );
  }
}
