import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutUsState();
  }
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutUs"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              child: Text(
                  "This is AboutUs page")),
        ),
      ),
    );
  }
}
