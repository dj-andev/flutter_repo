import 'package:flutter/material.dart';

class GroceryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GroceryPageState();
  }
}

class GroceryPageState extends State<GroceryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              child: Text(
                  "This is GroceryPage")),
        ),
      ),
    );
  }
}
