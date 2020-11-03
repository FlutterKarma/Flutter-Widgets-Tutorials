import 'package:flutter/material.dart';

class ScrollWheelList extends StatefulWidget {
  @override
  _ScrollWheelListState createState() => _ScrollWheelListState();
}

class _ScrollWheelListState extends State<ScrollWheelList> {
  var monthsOfTheYear = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  String selectedMonth = "";

  @override
  Widget build(BuildContext context) {
    FixedExtentScrollController fixedExtentScrollController =
        new FixedExtentScrollController();
    return Flexible(
      flex: 0,
      fit: FlexFit.loose,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListWheelScrollView(
            controller: fixedExtentScrollController,
            physics: FixedExtentScrollPhysics(),
            perspective: 0.005,
            offAxisFraction: -0.0,
            diameterRatio: 0.8,
            onSelectedItemChanged: (index) {
              setState(() {
                print("New month selected $index");
                selectedMonth = monthsOfTheYear[index];
              });
            },
            children: monthsOfTheYear.map(
              (month) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            month,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
            itemExtent: 60.0,
          ),
        ),
      ),
    );
  }
}
