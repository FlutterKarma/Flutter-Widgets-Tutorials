import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatefulWidget {
  @override
  _ShaderMaskWidgetState createState() => _ShaderMaskWidgetState();
}

class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            colors: [Colors.red, Colors.blue],
            stops: [0, 0.5]).createShader(rect);
      },
      child: FlutterLogo(
        size: 200,
      ),
      blendMode: BlendMode.srcIn,
    );
  }
}
