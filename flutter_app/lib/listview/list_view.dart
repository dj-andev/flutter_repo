import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),
        body: getListView());
  }

  Widget getListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
          subtitle: Text('opens Map page'),
          trailing: Icon(Icons.ac_unit),
          onTap: (){ showToast();},),
        ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
            subtitle: Text('opens Album page'),
            trailing: Icon(Icons.ac_unit),
            onTap: (){ showToast();}),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('opens Phone page'),
            trailing: Icon(Icons.ac_unit),
            onTap: (){showToast(); }
        ),
        Center(
          child: Text(
            "Sample text",
            style: TextStyle(
                backgroundColor: Colors.limeAccent,
                color: Colors.lightBlue,
                fontSize: 20.0),
          ),
        ),
        Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          height: 50.0,
        ),
        Center(
            child: Text(
              "Sample text",
              style: TextStyle(
                  backgroundColor: Colors.limeAccent,
                  color: Colors.lightBlue,
                  fontSize: 20.0),
            )),
        Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          height: 50.0,
        ), ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            subtitle: Text('opens Map page'),
            trailing: Icon(Icons.ac_unit),
            onTap: (){showToast(); }),
        ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
            subtitle: Text('opens Album page'),
            trailing: Icon(Icons.ac_unit),
            onTap: (){showToast(); }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('opens Phone page'),
            trailing: Icon(Icons.ac_unit),
            onTap: (){showToast(); }
        ),
        Center(
          child: Text(
            "Sample text",
            style: TextStyle(
                backgroundColor: Colors.limeAccent,
                color: Colors.lightBlue,
                fontSize: 20.0),
          ),
        ),
        Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          height: 50.0,
        ),
        Center(
            child: Text(
              "Sample text",
              style: TextStyle(
                  backgroundColor: Colors.limeAccent,
                  color: Colors.lightBlue,
                  fontSize: 20.0),
            )),
        Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          height: 50.0,
        )
      ],
    );
  }

  void showToast() {
    Fluttertoast.showToast(
                 msg: "Item Clicked..",
                 toastLength: Toast.LENGTH_SHORT,
                 gravity: ToastGravity.BOTTOM,
                 timeInSecForIos: 1,
                 backgroundColor: Colors.grey,
                 textColor: Colors.white,
                 fontSize: 16.0
             );
  }
}
