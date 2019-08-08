import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  String _string = "";
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
  var defaultOption = "Select";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String input) {
                setState(() {
                  _string = input;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "You entered text -> $_string",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
