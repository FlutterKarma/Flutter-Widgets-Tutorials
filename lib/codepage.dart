import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class MarkdownPage extends StatefulWidget {
  final String demoFilePath;

  MarkdownPage(
    this.demoFilePath,
  );

  @override
  _MarkdownPageState createState() => _MarkdownPageState();
}

class _MarkdownPageState extends State<MarkdownPage> {
  String _markdownCodeString;

  SyntaxTheme codethem = SyntaxTheme.dracula();
  bool dark = false;
  @override
  void didChangeDependencies() {
    getExampleCode(context, widget.demoFilePath, DefaultAssetBundle.of(context))
        .then<void>((String code) {
      if (mounted) {
        setState(() {
          _markdownCodeString = code ?? 'Example code not found';
        });
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Widget mdCode;

    try {
      mdCode = RichText(
        text: TextSpan(
          style: const TextStyle(),
          children: <TextSpan>[],
        ),
      );
    } catch (err) {
      mdCode = Text(_markdownCodeString ??= '');
    }
    return Scaffold(
        body: _markdownCodeString == null
            ? Center(
                child: Text('Not found'),
              )
            : SyntaxView(
                code: _code,
                syntax: Syntax.DART,
                syntaxTheme: codethem,
                withZoom: true,
                withLinesCount: true,
              ));
  }
}

Map<String, String> _exampleCode;
String _code;

Future<String> getExampleCode(
    context, String filePath, AssetBundle bundle) async {
  if (_exampleCode == null) await _parseExampleCode(context, filePath, bundle);
  return _code;
}

Future<void> _parseExampleCode(
    context, String filePath, AssetBundle bundle) async {
  String code;
  try {
    code = await bundle.loadString(filePath);
  } catch (err) {
    Navigator.of(context).pop();
  }
  _code = code;
}
