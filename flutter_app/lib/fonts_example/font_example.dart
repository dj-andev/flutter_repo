import 'package:flutter/material.dart';

class FontExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        child: Text(
          "Sample Text",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 30.0,
              color: Colors.limeAccent,
              fontFamily: "Ubuntu",
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
