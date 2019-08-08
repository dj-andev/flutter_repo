import 'package:flutter/material.dart';
import 'package:flutter_app/asyncronous/asyncronous.dart';
import 'package:flutter_app/splash/splash_page.dart';

void main() => runApp(MyWidget());
//    {
//      print("Program Started..."),
//      AsyncronousTask().printFileUsingAsyncWait(),
//      AsyncronousTask().printFileUsingFuture(),
//      print("Program Ended..."),
//    };

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first flutter app",
      home: SplashPage());
}
