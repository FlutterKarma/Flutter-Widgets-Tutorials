import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        final snackBar = SnackBar(
          content: Text(
            'show snackBarAction in left',
          ),
          backgroundColor: Colors.blue,
          action: SnackBarAction(
            textColor: Colors.white,
            label: 'undo',
            onPressed: () {},
          ),
          duration: Duration(seconds: 3),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text('Show snackbar with action'),
    );
  }
}
