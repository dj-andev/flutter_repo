import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LongListWidget extends StatelessWidget {
  Widget get LongListView {
    var itemList = getSource();
    var listview = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.supervised_user_circle),
        trailing: Icon(Icons.place),
        title: Text(itemList[index]),
        subtitle: Text(
          "sub title ${itemList[index]}",
        ),
        onTap: () {
          showSnackBar(context,index);
        },
      );
    });

    return listview;
  }

  List<String> getSource() {
    var listItems = List<String>.generate(1000, (counter) => "$counter Item");
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: LongListView,
      floatingActionButton: FloatingActionButton(
          onPressed: (){showToast("Flaoting");}, child: Icon(Icons.add), tooltip: "click"),
    );
  }
}

void showSnackBar(context, index){
  var snackbar = SnackBar(backgroundColor: Colors.lightBlue,content: Text("$index Item Clicked.."),action: SnackBarAction(label: "Ok",textColor: Colors.white, onPressed: (){
    showToast("Ok");
  }),);
  Scaffold.of(context).showSnackBar(snackbar);
}

void showToast(value) {
  Fluttertoast.showToast(
      msg: "$value button clicked...",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0);
}
