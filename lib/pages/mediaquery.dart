import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            tile("Screen height", mediaQuery.size.height),
            tile("Screen Width", mediaQuery.size.width),
            tile("Notch Size", mediaQuery.padding.bottom),
            tile("Screen height", mediaQuery.size.height),
            tile(null, null,
                directText:
                    "Scale factor height ${mediaQuery.textScaleFactor}"),
            tile(null, null,
                directText: "Color inverted : ${mediaQuery.invertColors}"),
            tile(null, null,
                directText:
                    "Os theme(light/dark) : ${mediaQuery.platformBrightness}"),
            tile(null, null,
                directText:
                    "High Contrast Screen : ${mediaQuery.highContrast}"),
            tile(null, null,
                directText:
                    "Animation enabled : ${!mediaQuery.disableAnimations}"),
          ],
        ),
      ),
    );
  }

  Widget tile(String title, double size, {String directText}) {
    return Container(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              directText ?? info(title, size),
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
    );
  }

  String info(String title, double size) {
    return "$title $size && in pixel : ${size * mediaQuery.devicePixelRatio}";
  }
}
