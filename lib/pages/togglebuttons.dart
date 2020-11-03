import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  var selectedList1 = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: [
        Icon(Icons.account_balance),
        Icon(Icons.backup),
        Icon(Icons.calendar_today),
        Text('Text'),
      ],
      onPressed: (int index) {
        setState(() => selectedList1[index] = !selectedList1[index]);
      },
      isSelected: selectedList1,
    );
  }
}
