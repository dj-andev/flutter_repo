import 'package:flutter/material.dart';
import 'package:flutter_app/first_screen/first_screen.dart';

class ScaffoldWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: FirstScreen(),
    );
  }

}