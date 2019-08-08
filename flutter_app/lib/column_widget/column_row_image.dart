import 'package:flutter/material.dart';
import 'package:flutter_app/image_widget/image_widget.dart';
import 'package:flutter_app/row_widget/text_widget.dart';

class ColumnRowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              )
            ],
          ),
          ImageWidget(),
          Row(
            children: <Widget>[
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              )
            ],
          ),
          ImageWidget(),
          Row(
            children: <Widget>[
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              )
            ],
          ),
          ImageWidget(),
          Row(
            children: <Widget>[
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              ),
              Expanded(
                child: TextWidget(),
              )
            ],
          ),
          ImageWidget(),
        ],
      ),
    );
  }
}
