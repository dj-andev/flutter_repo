import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            "My Lucky Number ${getMyLuckyNumber()}",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
      );

  int getMyLuckyNumber() => Random().nextInt(1000);

}
