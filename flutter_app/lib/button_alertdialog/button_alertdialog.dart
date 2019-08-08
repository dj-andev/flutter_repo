import 'package:flutter/material.dart';

class ButtonAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.deepOrangeAccent,
        width: 200.0,
        height: 50.0,
        child: RaisedButton(
          color: Colors.purpleAccent,
          child: Text(
            "Press",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 20.0),
          ),
          onPressed: () => buttonPressed(context),
          elevation: 6.0,
        ),
      ),
    );
  }

  void buttonPressed(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Title"),
      content: Text("Content description"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
