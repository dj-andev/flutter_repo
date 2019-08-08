import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TaskPageState();
  }
}

class TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              child: Text(
                  "This is TaskPage")),
        ),
      ),
    );
  }
}
