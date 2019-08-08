import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDropDownState();
  }
}

class MyDropDownState extends State<MyDropDown> {
  var list = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  var _currentItemSelected = "Select";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: list.map((String dropDownItem) {
                return DropdownMenuItem<String>(
                  value: dropDownItem,
                  child: Text(dropDownItem),
                );
              }).toList(),

              onChanged: (String selectedValue) {
                setState(() {
                  this._currentItemSelected = selectedValue;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "You selected -> $_currentItemSelected",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
