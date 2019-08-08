import 'package:flutter/material.dart';
import 'package:flutter_app/row_widget/text_widget.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage("images/image.png");
       Image image =  Image(image: assetImage);
       return Container(child: image,);
  }
}
