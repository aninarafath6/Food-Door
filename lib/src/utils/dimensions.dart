import 'package:flutter/material.dart';

class Dimensions {
  // taking the screen width and height 
  double getHeight(BuildContext context, height) =>
      (MediaQuery.of(context).size.height / 100) * height;
  double getWidth(BuildContext context, width) =>
      (MediaQuery.of(context).size.width / 100) * width;

// spacing widget
  SizedBox spacing(BuildContext context,
          {double? height = 0, double? width = 0}) =>
      SizedBox(
        height: getHeight(context, height),
        width: getWidth(context, width),
      );
}
