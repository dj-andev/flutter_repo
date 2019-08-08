import 'package:flutter/material.dart';

class ExpencePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpencePageState();
  }
}

class ExpencePageState extends State<ExpencePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Expence"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              child: Text(
                  "This is EpencePage page")),
        ),
      ),
    );
  }
}
