import 'package:flutter/material.dart';
import 'package:flutter_app/row_widget/text_widget.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
          color: Colors.deepOrangeAccent,
      child: Row(
        children: <Widget>[
          Expanded(child:TextWidget() ,),
          Expanded(child:TextWidget() ,),
          Expanded(child:TextWidget() ,),
          Expanded(child:TextWidget() ,),
          Expanded(child:TextWidget() ,)
        ],
      ),
    ));
  }
}
