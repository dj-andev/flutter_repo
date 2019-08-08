import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Sample Text",
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 12.0,
          color: Colors.limeAccent,
          fontFamily: "Ubuntu",
          fontWeight: FontWeight.w700),
    );
  }
}
